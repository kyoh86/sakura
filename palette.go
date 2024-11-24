package main

type ColorPalette struct {
	Black         Color
	Red           Color
	Green         Color
	Yellow        Color
	Blue          Color
	Magenta       Color
	Cyan          Color
	White         Color
	BrightBlack   Color
	BrightRed     Color
	BrightGreen   Color
	BrightYellow  Color
	BrightBlue    Color
	BrightMagenta Color
	BrightCyan    Color
	BrightWhite   Color
	HardBlack     Color
	GrayScale1    Color
	GrayScale2    Color
	GrayScale3    Color
	GrayScale4    Color
	GrayScale5    Color
}

var Palette = ColorPalette{
	Black: Color{
		RGBA:  FromHex("3A2731"), // 墨
		Index: 0,
	},
	Red: Color{
		RGBA:  FromHex("A03A3A"), // 紅海老茶
		Index: 1,
	},
	Green: Color{
		RGBA:  FromHex("3C7F01"), // 苔
		Index: 2,
	},
	Yellow: Color{
		RGBA:  FromHex("C07B02"), // 琥珀
		Index: 3,
	},
	Blue: Color{
		RGBA:  FromHex("196A9E"), // 藍鼠
		Index: 4,
	},
	Magenta: Color{
		RGBA:  FromHex("A45779"), // 蘇芳紫
		Index: 5,
	},
	Cyan: Color{
		RGBA:  FromHex("53838A"), // 錆青
		Index: 6,
	},
	White: Color{
		RGBA:  FromHex("E7C9D3"), // 桜鼠
		Index: 7,
	},
	BrightBlack: Color{
		RGBA:  FromHex("5D3E4C"), // 栗梅
		Index: 8,
	},
	BrightRed: Color{
		RGBA:  FromHex("CC4D4D"), // 朱華
		Index: 9,
	},
	BrightGreen: Color{
		RGBA:  FromHex("89B97C"), // 柳煤竹
		Index: 10,
	},
	BrightYellow: Color{
		RGBA:  FromHex("C88D00"), // 藤黄
		Index: 11,
	},
	BrightBlue: Color{
		RGBA:  FromHex("51B0FF"), // 浅縹
		Index: 12,
	},
	BrightMagenta: Color{
		RGBA:  FromHex("D29EB5"), // 桃花
		Index: 13,
	},
	BrightCyan: Color{
		RGBA:  FromHex("7DA2B3"), // 白群
		Index: 14,
	},
	BrightWhite: Color{
		RGBA:  FromHex("DEE9ED"), // 淡卯の花
		Index: 15,
	},
	HardBlack: Color{
		RGBA:  FromHex("3D272C"), // 濃蘇芳
		Index: 232,
	},
	GrayScale1: Color{
		RGBA:  FromHex("5D3E4C"), // 栗梅
		Index: 235,
	},
	GrayScale2: Color{
		RGBA:  FromHex("7A5867"), // 黒鳶
		Index: 236,
	},
	GrayScale3: Color{
		RGBA:  FromHex("977584"), // 落栗
		Index: 237,
	},
	GrayScale4: Color{
		RGBA:  FromHex("B995A4"), // 鳩羽紫
		Index: 238,
	},
	GrayScale5: Color{
		RGBA:  FromHex("E7C9D3"), // 桜鼠
		Index: 239,
	},
}
