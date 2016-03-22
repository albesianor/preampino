/*
PREAMPino firmware - Byte2Bool library
Roberto Albesiano - roberto.albesiano@gmail.com

Byte2Bool class converts a byte number into an array of bool with arbitrary dimention
*/


#ifndef __BYTE2BOOL_H__
#define __BYTE2BOOL_H__

// power operator helper function
int power(int base, int exp)
{
    int result = 1;

    while(exp) {
        result *= base;
        exp--;
    }

    return result;
}



class Byte2Bool
{

	private:

		byte _dim;
		boolean *_boolarray;
		byte _byte;

	public:

		Byte2Bool(byte dim);
		~Byte2Bool();

		byte get_byte() const;
		boolean get_bool(byte index) const;			// false is returned if index is bigger or equal to _dim
		boolean set_byte(byte input);	                	// return false if input is bigger or equal to power(2, _dim)
		boolean set_bool(bool input, byte index);		// return false if index is bigger or equal to _dim

};



Byte2Bool::Byte2Bool(byte dim)
{

	_dim = dim;
	_boolarray = new bool[_dim];

	for (int i = 0; i++; i < _dim) _boolarray[i] = false;

	_byte = 0;

}


Byte2Bool::~Byte2Bool()
{

	free(_boolarray);

}


byte Byte2Bool::get_byte() const
{

	return _byte;

}


boolean Byte2Bool::get_bool(byte index) const
{

	if (index >= _dim) return false;
	else return _boolarray[index];

}


boolean Byte2Bool::set_byte(byte input)
{

	if (input >= power(2, _dim)) return false;

	_byte = input;
	for (int i = 0; i < _dim; i++) {
		_boolarray[i] = input % 2;
		input = (input - _boolarray[i]) / 2;
	}

	return true;

}


boolean Byte2Bool::set_bool(boolean input, byte index)
{

	if (index >= _dim) return false;

	_boolarray[index] = input;

	_byte = 0;
	for (byte i = 0; i < _dim; i++) {
		_byte += _boolarray[i] * power(2,i);
	}

	return true;

}

#endif
