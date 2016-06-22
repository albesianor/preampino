#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
PREAMPino Client
Roberto Albesiano - roberto.albesiano@gmail.com
"""

from PyQt5 import QtWidgets, QtCore, QtGui, uic
import sys

from Models import BankModel

base, form = uic.loadUiType("./Views/mainwindow.ui")

class MainWindow(base, form):

    def __init__(self, parent=None):
        super(base, self).__init__(parent)
        self.setupUi(self)

        """ VIEW <------> #no# PROXY MODEL <------> DATA MODEL """
        self._model = BankModel()

        #self._proxyModel = QtCore.QSortFilterProxyModel(self)
        #self._proxyModel.setSourceModel(self._model)
        self.uiBankList.setModel(self._model)
        for i in range(1, 13):
            self.uiBankList.setColumnHidden(i, True)

        self._editor = EditorWidget(self)
        self.layoutMain.addWidget(self._editor)
        self._editor.setModel(self._model)

        self.uiBankList.selectionModel().currentChanged.connect(self._editor.setSelection)

        """ bank title connection """
        self.uiBankTitle.setText(self._model.getBankTitle())
        self.uiBankTitle.textChanged.connect(self._model.setBankTitle)

        """ initialize actions and their connections """
        self.actionNew.setShortcut("Ctrl+N")
        self.actionNew.triggered.connect(self.newBank)

        self.actionOpen.setShortcut("Ctrl+O")
        self.actionOpen.triggered.connect(self.loadXml)

        self.actionSave.setShortcut("Ctrl+S")
        self.actionSave.triggered.connect(self.saveXml)

        self.actionQuit.setShortcut("Ctrl+Q")
        self.actionQuit.triggered.connect(QtWidgets.qApp.quit)
        
        """ load settings """
        self.loadSettings()

    def newBank(self):
        
        reply = QtWidgets.QMessageBox.question(self, "New bank", "Create a new bank?\nWARNING: not saved work will be deleted!",
                                               QtWidgets.QMessageBox.Yes | QtWidgets.QMessageBox.No,
                                               QtWidgets.QMessageBox.No)
        
        if reply == QtWidgets.QMessageBox.Yes:
            self._model.newBank()
            self.uiBankList.selectRow(0)
            self.uiBankTitle.setText(self._model.getBankTitle())
       

    """ XML """
    def loadXml(self):

        filename = QtWidgets.QFileDialog.getOpenFileName(self, "Load bank...", "~", "PREAMPino bank file (*.pbk)")
        if filename[0]:
            self._model.readXml(filename[0])
            self.uiBankList.selectRow(0)
            self.uiBankTitle.setText(self._model.getBankTitle())

    def saveXml(self):

        filename = QtWidgets.QFileDialog.getSaveFileName(self, "Save bank...", "~", "PREAMPino bank file (*.pbk)")
        if filename[0]:
            self._model.writeXml(filename[0])


    """ settings """
    def loadSettings(self):
        settings = QtCore.QSettings("preampino.ini", QtCore.QSettings.IniFormat)
        
        size = settings.value("mainwindow/size")
        if size:
            self.resize(size)
        
        filename = settings.value("file/lastopen")
        if filename and filename != "":
            self._model.readXml(filename)
            self.uiBankList.selectRow(0)
            self.uiBankTitle.setText(self._model.getBankTitle())

    def writeSettings(self):
        settings = QtCore.QSettings("preampino.ini", QtCore.QSettings.IniFormat)
        
        settings.beginGroup("mainwindow")
        settings.setValue("size", self.size())
        settings.endGroup()
        
        settings.beginGroup("file")
        settings.setValue("lastopen", self._model.getLastOpen())
        settings.endGroup()
        
    """ redefine close event to call writeSettings() """
    def closeEvent(self, event):
        self.writeSettings()
        QtWidgets.QMainWindow.closeEvent(self, event)


editorBase, editorForm = uic.loadUiType("./Views/editor.ui")

class EditorWidget(editorBase, editorForm):

    def __init__(self, parent=None):

        super(editorBase, self).__init__(parent)
        self.setupUi(self)

        self._dataMapper = QtWidgets.QDataWidgetMapper()

    def setModel(self, model):

        self._model = model
        self._dataMapper.setModel(model)
        self._dataMapper.addMapping(self.uiTitle, 0)
        self._dataMapper.addMapping(self.uiFuzz, 1)
        self._dataMapper.addMapping(self.uiFuzzGain, 2)
        self._dataMapper.addMapping(self.uiFuzzGainDial, 2)
        self._dataMapper.addMapping(self.uiDist, 3)
        self._dataMapper.addMapping(self.uiClipUp, 4)
        self._dataMapper.addMapping(self.uiClipDown, 5)
        self._dataMapper.addMapping(self.uiDistGain, 6)
        self._dataMapper.addMapping(self.uiDistGainDial, 6)
        self._dataMapper.addMapping(self.uiBoost, 7)
        self._dataMapper.addMapping(self.uiBoostVolume, 8)
        self._dataMapper.addMapping(self.uiBoostVolumeDial, 8)
        self._dataMapper.addMapping(self.uiVC1Gain, 9)
        self._dataMapper.addMapping(self.uiVC1GainDial, 9)
        self._dataMapper.addMapping(self.uiVC2, 10)
        self._dataMapper.addMapping(self.uiVC2Gain, 11)
        self._dataMapper.addMapping(self.uiVC2GainDial, 11)
        self._dataMapper.addMapping(self.uiVolume, 12)
        self._dataMapper.addMapping(self.uiVolumeDial, 12)
        self._dataMapper.toFirst()

    def setSelection(self, current, previous):

        parent = current.parent()
        self._dataMapper.setRootIndex(parent)
        self._dataMapper.setCurrentModelIndex(current)

        self.uiPatchLCD.display(current.row())


if __name__ == '__main__':

    app = QtWidgets.QApplication(sys.argv)
    app.setWindowIcon(QtGui.QIcon("./Resources/audio-card.svg"))

    wnd = MainWindow()
    wnd.show()

    sys.exit(app.exec_())
