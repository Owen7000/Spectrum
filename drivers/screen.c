/* print a char on the screen at col, row, or at cursor position */
void print_char(char character, int col, int row, char attribute_byte) {
	unsigned char* vidmem = (unsigned char*)VIDEO_ADDRESS;
	if (!attribute_byte) {
		attribute_byte = WHITE_ON_BLACK;
	}

	int offset;

	if (col >= 0 && row >= 0) {

	}
}