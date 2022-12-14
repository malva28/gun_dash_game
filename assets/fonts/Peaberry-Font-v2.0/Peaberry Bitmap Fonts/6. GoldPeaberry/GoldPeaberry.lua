local Font = {}

Font.info = 
    {
    face              = "Peaberry",
    file              = "GoldPeaberry.png",
    size              = 32,
    bold              = 0,
    italic            = 0,
    charset           = "",
    unicode           = 0,
    stretchH          = 100,
    smooth            = 1,
    aa                = 1,
    padding           = {0, 0, 0, 0},
    spacing           = 2,
    charsCount        = 95,
    kerningsCounts    = 0,
    }

Font.common =
    {
    lineHeight        = 40,
    base              = 27,
    scaleW            = 268,
    scaleH            = 368,
    pages             = 1,
    packed            = 0,
    }

Font.chars =
    {
    {id=32,x=26,y=342,width=0,height=0,xoffset=0,yoffset=37,xadvance=10,page=0,chnl=0,letter="space"},
    {id=33,x=2,y=44,width=18,height=36,xoffset=1,yoffset=3,xadvance=14,page=0,chnl=0,letter="!"},
    {id=34,x=118,y=314,width=24,height=20,xoffset=-1,yoffset=3,xadvance=18,page=0,chnl=0,letter=string.char(34)},
    {id=35,x=220,y=44,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="#"},
    {id=36,x=234,y=2,width=26,height=36,xoffset=-1,yoffset=3,xadvance=20,page=0,chnl=0,letter="$"},
    {id=37,x=186,y=44,width=32,height=32,xoffset=-3,yoffset=5,xadvance=24,page=0,chnl=0,letter="%"},
    {id=38,x=2,y=116,width=28,height=32,xoffset=-1,yoffset=5,xadvance=22,page=0,chnl=0,letter="&"},
    {id=39,x=78,y=314,width=18,height=22,xoffset=5,yoffset=3,xadvance=18,page=0,chnl=0,letter="'"},
    {id=40,x=74,y=2,width=20,height=40,xoffset=1,yoffset=3,xadvance=16,page=0,chnl=0,letter="("},
    {id=41,x=96,y=2,width=20,height=40,xoffset=1,yoffset=3,xadvance=16,page=0,chnl=0,letter=")"},
    {id=42,x=100,y=252,width=26,height=28,xoffset=1,yoffset=3,xadvance=22,page=0,chnl=0,letter="*"},
    {id=43,x=2,y=286,width=26,height=26,xoffset=1,yoffset=7,xadvance=22,page=0,chnl=0,letter="+"},
    {id=44,x=98,y=314,width=18,height=22,xoffset=-1,yoffset=21,xadvance=12,page=0,chnl=0,letter=","},
    {id=45,x=2,y=342,width=22,height=14,xoffset=3,yoffset=17,xadvance=20,page=0,chnl=0,letter="-"},
    {id=46,x=198,y=314,width=18,height=18,xoffset=-1,yoffset=19,xadvance=12,page=0,chnl=0,letter="."},
    {id=47,x=78,y=44,width=22,height=34,xoffset=-3,yoffset=3,xadvance=14,page=0,chnl=0,letter="/"},
    {id=48,x=62,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="0"},
    {id=49,x=90,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="1"},
    {id=50,x=118,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="2"},
    {id=51,x=146,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="3"},
    {id=52,x=174,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="4"},
    {id=53,x=202,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="5"},
    {id=54,x=230,y=116,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="6"},
    {id=55,x=2,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="7"},
    {id=56,x=30,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="8"},
    {id=57,x=58,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="9"},
    {id=58,x=80,y=252,width=18,height=30,xoffset=-1,yoffset=9,xadvance=12,page=0,chnl=0,letter=":"},
    {id=59,x=126,y=44,width=18,height=34,xoffset=-1,yoffset=9,xadvance=12,page=0,chnl=0,letter=";"},
    {id=60,x=226,y=218,width=24,height=32,xoffset=-1,yoffset=3,xadvance=18,page=0,chnl=0,letter="<"},
    {id=61,x=52,y=314,width=24,height=22,xoffset=-1,yoffset=9,xadvance=18,page=0,chnl=0,letter="="},
    {id=62,x=2,y=252,width=24,height=32,xoffset=-1,yoffset=3,xadvance=18,page=0,chnl=0,letter=">"},
    {id=63,x=174,y=2,width=26,height=38,xoffset=-1,yoffset=3,xadvance=20,page=0,chnl=0,letter="?"},
    {id=64,x=2,y=82,width=30,height=32,xoffset=-3,yoffset=9,xadvance=22,page=0,chnl=0,letter="@"},
    {id=65,x=34,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="A"},
    {id=66,x=86,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="B"},
    {id=67,x=114,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="C"},
    {id=68,x=142,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="D"},
    {id=69,x=170,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="E"},
    {id=70,x=198,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="F"},
    {id=71,x=226,y=150,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="G"},
    {id=72,x=2,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="H"},
    {id=73,x=30,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="I"},
    {id=74,x=58,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="J"},
    {id=75,x=32,y=116,width=28,height=32,xoffset=-1,yoffset=5,xadvance=22,page=0,chnl=0,letter="K"},
    {id=76,x=86,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="L"},
    {id=77,x=66,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="M"},
    {id=78,x=114,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="N"},
    {id=79,x=98,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="O"},
    {id=80,x=142,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="P"},
    {id=81,x=202,y=2,width=30,height=36,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="Q"},
    {id=82,x=170,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="R"},
    {id=83,x=198,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="S"},
    {id=84,x=226,y=184,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="T"},
    {id=85,x=2,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="U"},
    {id=86,x=130,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="V"},
    {id=87,x=162,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="W"},
    {id=88,x=194,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="X"},
    {id=89,x=226,y=82,width=30,height=32,xoffset=-3,yoffset=5,xadvance=22,page=0,chnl=0,letter="Y"},
    {id=90,x=30,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="Z"},
    {id=91,x=118,y=2,width=18,height=40,xoffset=-1,yoffset=3,xadvance=12,page=0,chnl=0,letter="["},
    {id=92,x=102,y=44,width=22,height=34,xoffset=-3,yoffset=3,xadvance=14,page=0,chnl=0,letter=string.char(92)},
    {id=93,x=138,y=2,width=18,height=40,xoffset=-1,yoffset=3,xadvance=12,page=0,chnl=0,letter="]"},
    {id=94,x=128,y=252,width=30,height=26,xoffset=-3,yoffset=3,xadvance=22,page=0,chnl=0,letter="^"},
    {id=95,x=218,y=314,width=26,height=14,xoffset=-1,yoffset=29,xadvance=20,page=0,chnl=0,letter="_"},
    {id=96,x=176,y=314,width=20,height=18,xoffset=-3,yoffset=3,xadvance=12,page=0,chnl=0,letter="`"},
    {id=97,x=224,y=252,width=28,height=26,xoffset=-3,yoffset=11,xadvance=20,page=0,chnl=0,letter="a"},
    {id=98,x=58,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="b"},
    {id=99,x=226,y=286,width=24,height=26,xoffset=-1,yoffset=11,xadvance=18,page=0,chnl=0,letter="c"},
    {id=100,x=86,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="d"},
    {id=101,x=2,y=314,width=24,height=26,xoffset=-1,yoffset=11,xadvance=18,page=0,chnl=0,letter="e"},
    {id=102,x=114,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="f"},
    {id=103,x=22,y=44,width=26,height=34,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="g"},
    {id=104,x=142,y=218,width=26,height=32,xoffset=-1,yoffset=5,xadvance=20,page=0,chnl=0,letter="h"},
    {id=105,x=146,y=44,width=18,height=34,xoffset=3,yoffset=3,xadvance=16,page=0,chnl=0,letter="i"},
    {id=106,x=2,y=2,width=22,height=40,xoffset=1,yoffset=3,xadvance=18,page=0,chnl=0,letter="j"},
    {id=107,x=28,y=252,width=24,height=32,xoffset=1,yoffset=5,xadvance=20,page=0,chnl=0,letter="k"},
    {id=108,x=166,y=44,width=18,height=34,xoffset=3,yoffset=3,xadvance=16,page=0,chnl=0,letter="l"},
    {id=109,x=160,y=252,width=30,height=26,xoffset=-3,yoffset=11,xadvance=22,page=0,chnl=0,letter="m"},
    {id=110,x=30,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="n"},
    {id=111,x=58,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="o"},
    {id=112,x=170,y=218,width=26,height=32,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="p"},
    {id=113,x=198,y=218,width=26,height=32,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="q"},
    {id=114,x=86,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="r"},
    {id=115,x=28,y=314,width=22,height=26,xoffset=1,yoffset=11,xadvance=18,page=0,chnl=0,letter="s"},
    {id=116,x=54,y=252,width=24,height=32,xoffset=-1,yoffset=5,xadvance=18,page=0,chnl=0,letter="t"},
    {id=117,x=114,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="u"},
    {id=118,x=142,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="v"},
    {id=119,x=192,y=252,width=30,height=26,xoffset=-3,yoffset=11,xadvance=22,page=0,chnl=0,letter="w"},
    {id=120,x=170,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="x"},
    {id=121,x=50,y=44,width=26,height=34,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="y"},
    {id=122,x=198,y=286,width=26,height=26,xoffset=-1,yoffset=11,xadvance=20,page=0,chnl=0,letter="z"},
    {id=123,x=26,y=2,width=22,height=40,xoffset=-3,yoffset=3,xadvance=14,page=0,chnl=0,letter="{"},
    {id=124,x=158,y=2,width=14,height=40,xoffset=-1,yoffset=3,xadvance=8,page=0,chnl=0,letter="|"},
    {id=125,x=50,y=2,width=22,height=40,xoffset=-3,yoffset=3,xadvance=14,page=0,chnl=0,letter="}"},
    {id=126,x=144,y=314,width=30,height=18,xoffset=-3,yoffset=13,xadvance=22,page=0,chnl=0,letter="~"},
    }

Font.kerning =
    {
    }

return Font