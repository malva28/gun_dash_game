local Font = {}

Font.info = 
    {
    face              = "Peaberry",
    file              = "ShinyPeaberry.png",
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
    lineHeight        = 39,
    base              = 27,
    scaleW            = 260,
    scaleH            = 358,
    pages             = 1,
    packed            = 0,
    }

Font.chars =
    {
    {id=32,x=2,y=332,width=0,height=0,xoffset=0,yoffset=31,xadvance=10,page=0,chnl=0,letter="space"},
    {id=33,x=2,y=43,width=17,height=35,xoffset=4,yoffset=0,xadvance=14,page=0,chnl=0,letter="!"},
    {id=34,x=113,y=305,width=23,height=19,xoffset=2,yoffset=0,xadvance=18,page=0,chnl=0,letter=string.char(34)},
    {id=35,x=211,y=43,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="#"},
    {id=36,x=224,y=2,width=25,height=35,xoffset=2,yoffset=0,xadvance=20,page=0,chnl=0,letter="$"},
    {id=37,x=178,y=43,width=31,height=31,xoffset=0,yoffset=2,xadvance=24,page=0,chnl=0,letter="%"},
    {id=38,x=2,y=113,width=27,height=31,xoffset=2,yoffset=2,xadvance=22,page=0,chnl=0,letter="&"},
    {id=39,x=75,y=305,width=17,height=21,xoffset=8,yoffset=0,xadvance=18,page=0,chnl=0,letter="'"},
    {id=40,x=71,y=2,width=19,height=39,xoffset=4,yoffset=0,xadvance=16,page=0,chnl=0,letter="("},
    {id=41,x=92,y=2,width=19,height=39,xoffset=4,yoffset=0,xadvance=16,page=0,chnl=0,letter=")"},
    {id=42,x=96,y=245,width=25,height=27,xoffset=4,yoffset=0,xadvance=22,page=0,chnl=0,letter="*"},
    {id=43,x=2,y=278,width=25,height=25,xoffset=4,yoffset=4,xadvance=22,page=0,chnl=0,letter="+"},
    {id=44,x=94,y=305,width=17,height=21,xoffset=2,yoffset=18,xadvance=12,page=0,chnl=0,letter=","},
    {id=45,x=236,y=305,width=21,height=13,xoffset=6,yoffset=14,xadvance=20,page=0,chnl=0,letter="-"},
    {id=46,x=190,y=305,width=17,height=17,xoffset=2,yoffset=16,xadvance=12,page=0,chnl=0,letter="."},
    {id=47,x=75,y=43,width=21,height=33,xoffset=0,yoffset=0,xadvance=14,page=0,chnl=0,letter="/"},
    {id=48,x=60,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="0"},
    {id=49,x=87,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="1"},
    {id=50,x=114,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="2"},
    {id=51,x=141,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="3"},
    {id=52,x=168,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="4"},
    {id=53,x=195,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="5"},
    {id=54,x=222,y=113,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="6"},
    {id=55,x=2,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="7"},
    {id=56,x=29,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="8"},
    {id=57,x=56,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="9"},
    {id=58,x=77,y=245,width=17,height=29,xoffset=2,yoffset=6,xadvance=12,page=0,chnl=0,letter=":"},
    {id=59,x=121,y=43,width=17,height=33,xoffset=2,yoffset=6,xadvance=12,page=0,chnl=0,letter=";"},
    {id=60,x=218,y=212,width=23,height=31,xoffset=2,yoffset=0,xadvance=18,page=0,chnl=0,letter="<"},
    {id=61,x=50,y=305,width=23,height=21,xoffset=2,yoffset=6,xadvance=18,page=0,chnl=0,letter="="},
    {id=62,x=2,y=245,width=23,height=31,xoffset=2,yoffset=0,xadvance=18,page=0,chnl=0,letter=">"},
    {id=63,x=166,y=2,width=25,height=37,xoffset=2,yoffset=0,xadvance=20,page=0,chnl=0,letter="?"},
    {id=64,x=2,y=80,width=29,height=31,xoffset=0,yoffset=6,xadvance=22,page=0,chnl=0,letter="@"},
    {id=65,x=33,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="A"},
    {id=66,x=83,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="B"},
    {id=67,x=110,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="C"},
    {id=68,x=137,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="D"},
    {id=69,x=164,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="E"},
    {id=70,x=191,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="F"},
    {id=71,x=218,y=146,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="G"},
    {id=72,x=2,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="H"},
    {id=73,x=29,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="I"},
    {id=74,x=56,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="J"},
    {id=75,x=31,y=113,width=27,height=31,xoffset=2,yoffset=2,xadvance=22,page=0,chnl=0,letter="K"},
    {id=76,x=83,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="L"},
    {id=77,x=64,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="M"},
    {id=78,x=110,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="N"},
    {id=79,x=95,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="O"},
    {id=80,x=137,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="P"},
    {id=81,x=193,y=2,width=29,height=35,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="Q"},
    {id=82,x=164,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="R"},
    {id=83,x=191,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="S"},
    {id=84,x=218,y=179,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="T"},
    {id=85,x=2,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="U"},
    {id=86,x=126,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="V"},
    {id=87,x=157,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="W"},
    {id=88,x=188,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="X"},
    {id=89,x=219,y=80,width=29,height=31,xoffset=0,yoffset=2,xadvance=22,page=0,chnl=0,letter="Y"},
    {id=90,x=29,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="Z"},
    {id=91,x=113,y=2,width=17,height=39,xoffset=2,yoffset=0,xadvance=12,page=0,chnl=0,letter="["},
    {id=92,x=98,y=43,width=21,height=33,xoffset=0,yoffset=0,xadvance=14,page=0,chnl=0,letter=string.char(92)},
    {id=93,x=132,y=2,width=17,height=39,xoffset=2,yoffset=0,xadvance=12,page=0,chnl=0,letter="]"},
    {id=94,x=123,y=245,width=29,height=25,xoffset=0,yoffset=0,xadvance=22,page=0,chnl=0,letter="^"},
    {id=95,x=209,y=305,width=25,height=13,xoffset=2,yoffset=26,xadvance=20,page=0,chnl=0,letter="_"},
    {id=96,x=169,y=305,width=19,height=17,xoffset=0,yoffset=0,xadvance=12,page=0,chnl=0,letter="`"},
    {id=97,x=216,y=245,width=27,height=25,xoffset=0,yoffset=8,xadvance=20,page=0,chnl=0,letter="a"},
    {id=98,x=56,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="b"},
    {id=99,x=218,y=278,width=23,height=25,xoffset=2,yoffset=8,xadvance=18,page=0,chnl=0,letter="c"},
    {id=100,x=83,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="d"},
    {id=101,x=2,y=305,width=23,height=25,xoffset=2,yoffset=8,xadvance=18,page=0,chnl=0,letter="e"},
    {id=102,x=110,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="f"},
    {id=103,x=21,y=43,width=25,height=33,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="g"},
    {id=104,x=137,y=212,width=25,height=31,xoffset=2,yoffset=2,xadvance=20,page=0,chnl=0,letter="h"},
    {id=105,x=140,y=43,width=17,height=33,xoffset=6,yoffset=0,xadvance=16,page=0,chnl=0,letter="i"},
    {id=106,x=2,y=2,width=21,height=39,xoffset=4,yoffset=0,xadvance=18,page=0,chnl=0,letter="j"},
    {id=107,x=27,y=245,width=23,height=31,xoffset=4,yoffset=2,xadvance=20,page=0,chnl=0,letter="k"},
    {id=108,x=159,y=43,width=17,height=33,xoffset=6,yoffset=0,xadvance=16,page=0,chnl=0,letter="l"},
    {id=109,x=154,y=245,width=29,height=25,xoffset=0,yoffset=8,xadvance=22,page=0,chnl=0,letter="m"},
    {id=110,x=29,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="n"},
    {id=111,x=56,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="o"},
    {id=112,x=164,y=212,width=25,height=31,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="p"},
    {id=113,x=191,y=212,width=25,height=31,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="q"},
    {id=114,x=83,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="r"},
    {id=115,x=27,y=305,width=21,height=25,xoffset=4,yoffset=8,xadvance=18,page=0,chnl=0,letter="s"},
    {id=116,x=52,y=245,width=23,height=31,xoffset=2,yoffset=2,xadvance=18,page=0,chnl=0,letter="t"},
    {id=117,x=110,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="u"},
    {id=118,x=137,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="v"},
    {id=119,x=185,y=245,width=29,height=25,xoffset=0,yoffset=8,xadvance=22,page=0,chnl=0,letter="w"},
    {id=120,x=164,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="x"},
    {id=121,x=48,y=43,width=25,height=33,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="y"},
    {id=122,x=191,y=278,width=25,height=25,xoffset=2,yoffset=8,xadvance=20,page=0,chnl=0,letter="z"},
    {id=123,x=25,y=2,width=21,height=39,xoffset=0,yoffset=0,xadvance=14,page=0,chnl=0,letter="{"},
    {id=124,x=151,y=2,width=13,height=39,xoffset=2,yoffset=0,xadvance=8,page=0,chnl=0,letter="|"},
    {id=125,x=48,y=2,width=21,height=39,xoffset=0,yoffset=0,xadvance=14,page=0,chnl=0,letter="}"},
    {id=126,x=138,y=305,width=29,height=17,xoffset=0,yoffset=10,xadvance=22,page=0,chnl=0,letter="~"},
    }

Font.kerning =
    {
    }

return Font