package main

import (
	"image/color"
)

type Name string

type ColorPalette struct {
	Black        Color
	Red          Color
	Green        Color
	Yellow       Color
	Blue         Color
	Magenta      Color
	Cyan         Color
	White        Color
	LightBlack   Color
	LightRed     Color
	LightGreen   Color
	LightYellow  Color
	LightBlue    Color
	LightMagenta Color
	LightCyan    Color
	LightWhite   Color
	HardBlack    Color
	GrayScale1   Color
	GrayScale2   Color
	GrayScale3   Color
	GrayScale4   Color
	GrayScale5   Color
}

var Palette = ColorPalette{
	Black: Color{
		// 蘇芳黒
		RGBA:  color.RGBA{R: 0x3F, G: 0x2B, B: 0x36},
		Index: 0,
	},
	Red: Color{
		// 深緋
		RGBA:  color.RGBA{R: 0xA2, G: 0x20, B: 0x41},
		Index: 1,
	},
	Green: Color{
		// 常磐
		RGBA:  color.RGBA{R: 0x00, G: 0x7B, B: 0x43},
		Index: 2,
	},
	Yellow: Color{
		// 山吹
		RGBA:  color.RGBA{R: 0xF8, G: 0xB5, B: 0x00},
		Index: 3,
	},
	Blue: Color{
		// 縹
		RGBA:  color.RGBA{R: 0x00, G: 0x7B, B: 0xBB},
		Index: 4,
	},
	Magenta: Color{
		// 梅紫
		RGBA:  color.RGBA{R: 0xAA, G: 0x5E, B: 0x81},
		Index: 5,
	},
	Cyan: Color{
		// 青磁
		RGBA:  color.RGBA{R: 0x46, G: 0x81, B: 0x98},
		Index: 6,
	},
	White: Color{
		// 香（Grayscale-4）
		RGBA:  color.RGBA{R: 0xB2, G: 0x9F, B: 0x9A},
		Index: 7,
	},
	LightBlack: Color{
		// 鉛茶（Grayscale-2）
		RGBA:  color.RGBA{R: 0x78, G: 0x6D, B: 0x6E},
		Index: 8,
	},
	LightRed: Color{
		// 紅緋
		RGBA:  color.RGBA{R: 0xE8, G: 0x39, B: 0x29},
		Index: 9,
	},
	LightGreen: Color{
		// 若竹
		RGBA:  color.RGBA{R: 0x68, G: 0xBE, B: 0x8D},
		Index: 10,
	},
	LightYellow: Color{
		// 中黄
		RGBA:  color.RGBA{R: 0xFF, G: 0xD9, B: 0x00},
		Index: 11,
	},
	LightBlue: Color{
		// 浅葱
		RGBA:  color.RGBA{R: 0x00, G: 0xA1, B: 0xE9},
		Index: 12,
	},
	LightMagenta: Color{
		// 薄紅梅
		RGBA:  color.RGBA{R: 0xD8, G: 0xAA, B: 0xBf},
		Index: 13,
	},
	LightCyan: Color{
		// 錆青磁
		RGBA:  color.RGBA{R: 0x86, G: 0xB2, B: 0xC5},
		Index: 14,
	},
	LightWhite: Color{
		// 卯の花
		RGBA:  color.RGBA{R: 0xF8, G: 0xFB, B: 0xFE},
		Index: 15,
	},
	HardBlack: Color{
		// 鉄黒
		RGBA:  color.RGBA{R: 0x28, G: 0x1A, B: 0x1C},
		Index: 232,
	},
	GrayScale1: Color{
		// 紅消鼠
		RGBA:  color.RGBA{R: 0x5B, G: 0x4D, B: 0x4E},
		Index: 235,
	},
	GrayScale2: Color{
		// 鉛茶
		RGBA:  color.RGBA{R: 0x78, G: 0x6D, B: 0x6E},
		Index: 236,
	},
	GrayScale3: Color{
		// 鳩羽鼠
		RGBA:  color.RGBA{R: 0x8B, G: 0x7D, B: 0x7E},
		Index: 237,
	},
	GrayScale4: Color{
		// 香
		RGBA:  color.RGBA{R: 0xB2, G: 0x9F, B: 0x9A},
		Index: 238,
	},
	GrayScale5: Color{
		// 鳥の子
		RGBA:  color.RGBA{R: 0xD8, G: 0xC9, B: 0xBF},
		Index: 239,
	},
}
