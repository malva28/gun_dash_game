local Font = {}

Font.info = 
    {
    face              = "Peaberry",
    file              = "IndigoPeaberry.png",
    size              = 16,
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
    lineHeight        = 28,
    base              = 13,
    scaleW            = 247,
    scaleH            = 275,
    pages             = 1,
    packed            = 0,
    }

Font.chars =
    {
    {id=32,x=46,y=236,width=0,height=0,xoffset=0,yoffset=30,xadvance=5,page=0,chnl=0,letter="space"},
    {id=33,x=2,y=32,width=17,height=26,xoffset=-2,yoffset=5,xadvance=7,page=0,chnl=0,letter="!"},
    {id=34,x=150,y=213,width=20,height=18,xoffset=-3,yoffset=5,xadvance=9,page=0,chnl=0,letter=string.char(34)},
    {id=35,x=192,y=32,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="#"},
    {id=36,x=208,y=2,width=21,height=26,xoffset=-3,yoffset=5,xadvance=10,page=0,chnl=0,letter="$"},
    {id=37,x=166,y=32,width=24,height=24,xoffset=-4,yoffset=6,xadvance=12,page=0,chnl=0,letter="%"},
    {id=38,x=177,y=60,width=22,height=24,xoffset=-3,yoffset=6,xadvance=11,page=0,chnl=0,letter="&"},
    {id=39,x=112,y=213,width=17,height=19,xoffset=0,yoffset=5,xadvance=9,page=0,chnl=0,letter="'"},
    {id=40,x=65,y=2,width=18,height=28,xoffset=-2,yoffset=5,xadvance=8,page=0,chnl=0,letter="("},
    {id=41,x=85,y=2,width=18,height=28,xoffset=-2,yoffset=5,xadvance=8,page=0,chnl=0,letter=")"},
    {id=42,x=178,y=164,width=21,height=22,xoffset=-2,yoffset=5,xadvance=11,page=0,chnl=0,letter="*"},
    {id=43,x=76,y=190,width=21,height=21,xoffset=-2,yoffset=7,xadvance=11,page=0,chnl=0,letter="+"},
    {id=44,x=131,y=213,width=17,height=19,xoffset=-3,yoffset=14,xadvance=6,page=0,chnl=0,letter=","},
    {id=45,x=25,y=236,width=19,height=15,xoffset=-1,yoffset=12,xadvance=10,page=0,chnl=0,letter="-"},
    {id=46,x=217,y=213,width=17,height=17,xoffset=-3,yoffset=13,xadvance=6,page=0,chnl=0,letter="."},
    {id=47,x=67,y=32,width=19,height=25,xoffset=-4,yoffset=5,xadvance=7,page=0,chnl=0,letter="/"},
    {id=48,x=2,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="0"},
    {id=49,x=25,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="1"},
    {id=50,x=48,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="2"},
    {id=51,x=71,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="3"},
    {id=52,x=94,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="4"},
    {id=53,x=117,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="5"},
    {id=54,x=140,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="6"},
    {id=55,x=163,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="7"},
    {id=56,x=186,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="8"},
    {id=57,x=209,y=86,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="9"},
    {id=58,x=159,y=164,width=17,height=23,xoffset=-3,yoffset=8,xadvance=6,page=0,chnl=0,letter=":"},
    {id=59,x=109,y=32,width=17,height=25,xoffset=-3,yoffset=8,xadvance=6,page=0,chnl=0,letter=";"},
    {id=60,x=71,y=164,width=20,height=24,xoffset=-3,yoffset=5,xadvance=9,page=0,chnl=0,letter="<"},
    {id=61,x=90,y=213,width=20,height=19,xoffset=-3,yoffset=8,xadvance=9,page=0,chnl=0,letter="="},
    {id=62,x=93,y=164,width=20,height=24,xoffset=-3,yoffset=5,xadvance=9,page=0,chnl=0,letter=">"},
    {id=63,x=160,y=2,width=21,height=27,xoffset=-3,yoffset=5,xadvance=10,page=0,chnl=0,letter="?"},
    {id=64,x=217,y=32,width=23,height=24,xoffset=-4,yoffset=8,xadvance=11,page=0,chnl=0,letter="@"},
    {id=65,x=2,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="A"},
    {id=66,x=2,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="B"},
    {id=67,x=25,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="C"},
    {id=68,x=48,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="D"},
    {id=69,x=71,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="E"},
    {id=70,x=94,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="F"},
    {id=71,x=117,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="G"},
    {id=72,x=140,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="H"},
    {id=73,x=163,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="I"},
    {id=74,x=186,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="J"},
    {id=75,x=201,y=60,width=22,height=24,xoffset=-3,yoffset=6,xadvance=11,page=0,chnl=0,letter="K"},
    {id=76,x=209,y=112,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="L"},
    {id=77,x=27,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="M"},
    {id=78,x=2,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="N"},
    {id=79,x=52,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="O"},
    {id=80,x=25,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="P"},
    {id=81,x=183,y=2,width=23,height=26,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="Q"},
    {id=82,x=48,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="R"},
    {id=83,x=71,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="S"},
    {id=84,x=94,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="T"},
    {id=85,x=117,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="U"},
    {id=86,x=77,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="V"},
    {id=87,x=102,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="W"},
    {id=88,x=127,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="X"},
    {id=89,x=152,y=60,width=23,height=24,xoffset=-4,yoffset=6,xadvance=11,page=0,chnl=0,letter="Y"},
    {id=90,x=140,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="Z"},
    {id=91,x=105,y=2,width=17,height=28,xoffset=-3,yoffset=5,xadvance=6,page=0,chnl=0,letter="["},
    {id=92,x=88,y=32,width=19,height=25,xoffset=-4,yoffset=5,xadvance=7,page=0,chnl=0,letter=string.char(92)},
    {id=93,x=124,y=2,width=17,height=28,xoffset=-3,yoffset=5,xadvance=6,page=0,chnl=0,letter="]"},
    {id=94,x=201,y=164,width=23,height=21,xoffset=-4,yoffset=5,xadvance=11,page=0,chnl=0,letter="^"},
    {id=95,x=2,y=236,width=21,height=15,xoffset=-3,yoffset=18,xadvance=10,page=0,chnl=0,letter="_"},
    {id=96,x=197,y=213,width=18,height=17,xoffset=-4,yoffset=5,xadvance=6,page=0,chnl=0,letter="`"},
    {id=97,x=52,y=190,width=22,height=21,xoffset=-4,yoffset=9,xadvance=10,page=0,chnl=0,letter="a"},
    {id=98,x=163,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="b"},
    {id=99,x=25,y=213,width=20,height=21,xoffset=-3,yoffset=9,xadvance=9,page=0,chnl=0,letter="c"},
    {id=100,x=186,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="d"},
    {id=101,x=47,y=213,width=20,height=21,xoffset=-3,yoffset=9,xadvance=9,page=0,chnl=0,letter="e"},
    {id=102,x=209,y=138,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="f"},
    {id=103,x=21,y=32,width=21,height=25,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="g"},
    {id=104,x=2,y=164,width=21,height=24,xoffset=-3,yoffset=6,xadvance=10,page=0,chnl=0,letter="h"},
    {id=105,x=128,y=32,width=17,height=25,xoffset=-1,yoffset=5,xadvance=8,page=0,chnl=0,letter="i"},
    {id=106,x=2,y=2,width=19,height=28,xoffset=-2,yoffset=5,xadvance=9,page=0,chnl=0,letter="j"},
    {id=107,x=115,y=164,width=20,height=24,xoffset=-2,yoffset=6,xadvance=10,page=0,chnl=0,letter="k"},
    {id=108,x=147,y=32,width=17,height=25,xoffset=-1,yoffset=5,xadvance=8,page=0,chnl=0,letter="l"},
    {id=109,x=2,y=190,width=23,height=21,xoffset=-4,yoffset=9,xadvance=11,page=0,chnl=0,letter="m"},
    {id=110,x=99,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="n"},
    {id=111,x=122,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="o"},
    {id=112,x=25,y=164,width=21,height=24,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="p"},
    {id=113,x=48,y=164,width=21,height=24,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="q"},
    {id=114,x=145,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="r"},
    {id=115,x=69,y=213,width=19,height=21,xoffset=-2,yoffset=9,xadvance=9,page=0,chnl=0,letter="s"},
    {id=116,x=137,y=164,width=20,height=24,xoffset=-3,yoffset=6,xadvance=9,page=0,chnl=0,letter="t"},
    {id=117,x=168,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="u"},
    {id=118,x=191,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="v"},
    {id=119,x=27,y=190,width=23,height=21,xoffset=-4,yoffset=9,xadvance=11,page=0,chnl=0,letter="w"},
    {id=120,x=214,y=190,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="x"},
    {id=121,x=44,y=32,width=21,height=25,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="y"},
    {id=122,x=2,y=213,width=21,height=21,xoffset=-3,yoffset=9,xadvance=10,page=0,chnl=0,letter="z"},
    {id=123,x=23,y=2,width=19,height=28,xoffset=-4,yoffset=5,xadvance=7,page=0,chnl=0,letter="{"},
    {id=124,x=143,y=2,width=15,height=28,xoffset=-3,yoffset=5,xadvance=4,page=0,chnl=0,letter="|"},
    {id=125,x=44,y=2,width=19,height=28,xoffset=-4,yoffset=5,xadvance=7,page=0,chnl=0,letter="}"},
    {id=126,x=172,y=213,width=23,height=17,xoffset=-4,yoffset=10,xadvance=11,page=0,chnl=0,letter="~"},
    }

Font.kerning =
    {
    }

return Font