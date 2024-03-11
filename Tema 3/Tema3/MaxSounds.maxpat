{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 85.0, 1464.0, 921.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 495.0, 268.0, 86.0, 22.0 ],
					"text" : "serial i 115200"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 27.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\brujas.mp3",
								"filename" : "brujas.mp3",
								"filekind" : "audiofile",
								"id" : "u038000310",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\absurdity.mp3",
								"filename" : "absurdity.mp3",
								"filekind" : "audiofile",
								"id" : "u776000307",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\scream-with-joy.mp3",
								"filename" : "scream-with-joy.mp3",
								"filekind" : "audiofile",
								"id" : "u965000316",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\varule.mp3",
								"filename" : "varule.mp3",
								"filekind" : "audiofile",
								"id" : "u740000607",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\42.mp3",
								"filename" : "42.mp3",
								"filekind" : "audiofile",
								"id" : "u685000610",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\mars.mp3",
								"filename" : "mars.mp3",
								"filekind" : "audiofile",
								"id" : "u311000623",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{
									"loop" : 0
								}

							}
, 							{
								"absolutepath" : "D:\\ITPMA\\Creative-coding\\Media\\mp3s\\intro.mp3",
								"filename" : "intro.mp3",
								"filekind" : "audiofile",
								"id" : "u038000313",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-2",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 410.0, 232.0, 196.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 495.0, 352.0, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 655.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 311.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 185.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 495.0, 229.0, 56.0, 22.0 ],
					"text" : "metro 10"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "42.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "absurdity.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "brujas.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "intro.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "mars.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "scream-with-joy.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "varule.mp3",
				"bootpath" : "D:/ITPMA/Creative-coding/Media/mp3s",
				"patcherrelativepath" : "../../Media/mp3s",
				"type" : "Mp3",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
