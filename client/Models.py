#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
PREAMPino Client
Roberto Albesiano - roberto.albesiano@gmail.com
"""

from PyQt5 import QtCore

class BankModel(QtCore.QAbstractTableModel):
    
    def __init__(self,
                 bank=[["", False, 0, False, False, False, 0, False, 0, 0, False, 0, 0] for dummy in range(200)],
                 headers=[],
                 parent=None):
        
        QtCore.QAbstractTableModel.__init__(self, parent)
        self.__bank = bank
        self.__headers = headers
        self.__title = ""
        
    def rowCount(self, parent):
        return len(self.__bank)
    
    def columnCount(self, parent):
        return len(self.__bank[0])
    
    def flags(self, index):
        return QtCore.Qt.ItemIsEditable | QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsSelectable
    
    def data(self, index, role):
        
        if role == QtCore.Qt.DisplayRole or role == QtCore.Qt.EditRole:
            
            row = index.row()
            column = index.column()
            
            return self.__bank[row][column]
        
    def headerData(self, section, orientation, role):

        if role == QtCore.Qt.DisplayRole:
            
            if orientation == QtCore.Qt.Horizontal:
                return QtCore.QVariant(self.__headers[section])
            else:
                return QtCore.QVariant(section)
            
    def setData(self, index, value, role=QtCore.Qt.EditRole):
        
        if index.isValid():
            if role == QtCore.Qt.EditRole:
                row = index.row()
                column = index.column()
            
                self.__bank[row][column] = value
                self.dataChanged.emit(index, index)
            
                return True
        
        return False
    
    """ CUSTOM """
    def setBankTitle(self, title):
        self.__title = title
        
    def getBankTitle(self):
        return self.__title
    
    def newBank(self):
        self.__bank = [["", False, 0, False, False, False, 0, False, 0, 0, False, 0, 0] for dummy in range(200)]
        self.__title = ""
    
    """ INPUT: string """
    def writeXml(self, filename):
        
        file = QtCore.QFile(filename)
        file.open(QtCore.QIODevice.WriteOnly)
        
        doc = QtCore.QXmlStreamWriter(file)
        doc.setAutoFormatting(True)

        doc.writeStartDocument()
        doc.writeComment("PREAMPino Client bank file")
        doc.writeStartElement("bank")
        doc.writeAttribute("app", "preampino")
        doc.writeAttribute("title", self.__title)
        
        for i in range(len(self.__bank)):
            doc.writeStartElement("patch")
            
            doc.writeAttribute("id", str(i))
            
            doc.writeTextElement("title", str(self.__bank[i][0]))
            
            doc.writeStartElement("fuzz")
            doc.writeTextElement("status", str(int(self.__bank[i][1])))
            doc.writeTextElement("gain", str(self.__bank[i][2]))
            doc.writeEndElement()
            
            doc.writeStartElement("dist")
            doc.writeTextElement("status", str(int(self.__bank[i][3])))
            doc.writeTextElement("clipup", str(int(self.__bank[i][4])))
            doc.writeTextElement("clipdown", str(int(self.__bank[i][5])))
            doc.writeTextElement("gain", str(self.__bank[i][6]))
            doc.writeEndElement()
            
            doc.writeStartElement("boost")
            doc.writeTextElement("status", str(int(self.__bank[i][7])))
            doc.writeTextElement("volume", str(self.__bank[i][8]))
            doc.writeEndElement()
            
            doc.writeStartElement("valvecaster")
            doc.writeTextElement("vc1gain", str(self.__bank[i][9]))
            doc.writeTextElement("vc2status", str(int(self.__bank[i][10])))
            doc.writeTextElement("vc2gain", str(self.__bank[i][11]))
            doc.writeEndElement()
            
            doc.writeTextElement("master", str(self.__bank[i][12]))
            
            doc.writeEndElement()
        
        doc.writeEndElement()
        doc.writeEndDocument()
        
    """ INPUT: string"""
    def readXml(self, filename):
        
        file = QtCore.QFile(filename)
        file.open(QtCore.QIODevice.ReadOnly)
        
        doc = QtCore.QXmlStreamReader(file)
        
        if doc.readNextStartElement():
            
            if doc.name() == "bank" and doc.attributes().value("app") == "preampino":
                
                self.__title = doc.attributes().value("title")
                
                while doc.readNextStartElement():
                    
                    if doc.name() == "patch":
                        
                        i = int(doc.attributes().value("id"))
                        
                        while doc.readNextStartElement():
                            
                            if doc.name() == "title":
                                self.__bank[i][0] = str(doc.readElementText())
                                
                            elif doc.name() == "fuzz":
                                while doc.readNextStartElement():
                                    if doc.name() == "status":
                                        self.__bank[i][1] = bool(int(doc.readElementText()))
                                    elif doc.name() == "gain":
                                        self.__bank[i][2] = int(doc.readElementText())
                                    else:
                                        doc.skipCurrentElement()
                                        
                            elif doc.name() == "dist":
                                while doc.readNextStartElement():
                                    if doc.name() == "status":
                                        self.__bank[i][3] = bool(int(doc.readElementText()))
                                    elif doc.name() == "clipup":
                                        self.__bank[i][4] = bool(int(doc.readElementText()))
                                    elif doc.name() == "clipdown":
                                        self.__bank[i][5] = bool(int(doc.readElementText()))
                                    elif doc.name() == "gain":
                                        self.__bank[i][6] = int(doc.readElementText())
                                    else:
                                        doc.skipCurrentElement()
                                        
                            elif doc.name() == "boost":
                                while doc.readNextStartElement():
                                    if doc.name() == "status":
                                        self.__bank[i][7] = bool(int(doc.readElementText()))
                                    elif doc.name() == "volume":
                                        self.__bank[i][8] = int(doc.readElementText())
                                    else:
                                        doc.skipCurrentElement()
                                        
                            elif doc.name() == "valvecaster":
                                while doc.readNextStartElement():
                                    if doc.name() == "vc1gain":
                                        self.__bank[i][9] = int(doc.readElementText())
                                    elif doc.name() == "vc2status":
                                        self.__bank[i][10] = bool(int(doc.readElementText()))
                                    elif doc.name() == "vc2gain":
                                        self.__bank[i][11] = int(doc.readElementText())
                                    else:
                                        doc.skipCurrentElement()
                                        
                            elif doc.name() == "master":
                                self.__bank[i][12] = int(doc.readElementText())
                                
                            else:
                                doc.skipCurrentElement()
                                
                        print()
                    
                    else:
                        doc.skipCurrentElement()
            
            else:
                print("ERROR: this is not a PREAMPino Client bank file!")
    
    