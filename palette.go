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
	Gradation1    Color
	Gradation2    Color
	Gradation3    Color
	Gradation4    Color
	Gradation5    Color

	Background Color
	Foreground Color

	WeakRed       Color
	WeakGreen     Color
	WeakYellow    Color
	WeakBlue      Color
	WeakMagenta   Color
	WeakCyan      Color
	StrongRed     Color
	StrongGreen   Color
	StrongYellow  Color
	StrongBlue    Color
	StrongMagenta Color
	StrongCyan    Color
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
	Gradation1: Color{
		RGBA:  FromHex("E7C9D3"), // 桜鼠
		Index: 239,
	},
	Gradation2: Color{
		RGBA:  FromHex("B995A4"), // 鳩羽紫
		Index: 238,
	},
	Gradation3: Color{
		RGBA:  FromHex("977584"), // 落栗
		Index: 237,
	},
	Gradation4: Color{
		RGBA:  FromHex("7A5867"), // 黒鳶
		Index: 236,
	},
	Gradation5: Color{
		RGBA:  FromHex("5D3E4C"), // 栗梅
		Index: 235,
	},
}

func init() {
	Palette.Background = Palette.BrightWhite
	Palette.Foreground = Palette.Black

	Palette.WeakRed = Palette.BrightRed
	Palette.WeakGreen = Palette.BrightGreen
	Palette.WeakYellow = Palette.BrightYellow
	Palette.WeakBlue = Palette.BrightBlue
	Palette.WeakMagenta = Palette.BrightMagenta
	Palette.WeakCyan = Palette.BrightCyan
	Palette.StrongRed = Palette.Red
	Palette.StrongGreen = Palette.Green
	Palette.StrongYellow = Palette.Yellow
	Palette.StrongBlue = Palette.Blue
	Palette.StrongMagenta = Palette.Magenta
	Palette.StrongCyan = Palette.Cyan
}
