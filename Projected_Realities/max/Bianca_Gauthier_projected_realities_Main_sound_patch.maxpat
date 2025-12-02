{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1068.0, 705.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-246",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1661.240335822105408, 192.506491661071777, 150.0, 24.0 ],
					"text" : "add myModel.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1497.321414291858673, 448.535709798336029, 64.285713672637939, 103.0 ],
					"text" : "counter delays, at the 15 bang the sampRandom is affected"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-242",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1788.157877683639526, 42.105262756347656, 285.526313066482544, 29.0 ],
					"presentation_linecount" : 2,
					"text" : "some poses are not used yet",
					"textcolor" : [ 0.980392156862745, 0.419607843137255, 0.419607843137255, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-241",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2594.516937017440796, 132.467531204223633, 246.0, 121.0 ],
					"text" : "click the number messages, to hear, if ever something isnt activated as that specific pose hasent been called yet",
					"textcolor" : [ 0.980392156862745, 0.419607843137255, 0.419607843137255, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2402.864410877227783, 215.423718333244324, 150.0, 34.0 ],
					"text" : "click bang to read the lenght of audio file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2708.035688459873199, 1244.642845273017883, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2270.535692632198334, 1577.678556382656097, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2279.46426397562027, 637.499993920326233, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2682.142831563949585, 374.10713928937912, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2538.292365789413452, 344.33896815776825, 29.5, 22.0 ],
					"text" : "36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2556.0, 1225.892845451831818, 29.5, 22.0 ],
					"text" : "45"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 1576.166628479957581, 470.535709798336029, 75.0, 22.0 ],
					"text" : "counter 1 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 1719.480503082275391, 467.532463073730469, 75.0, 22.0 ],
					"text" : "counter 1 15"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-225",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 748.333315491676331, 34.999999165534973, 462.0, 34.0 ],
					"text" : "OSC Receiving Part",
					"textcolor" : [ 0.247058823529412, 0.701960784313725, 0.611764705882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-224",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 463.425525546073914, 641.0, 462.0, 34.0 ],
					"text" : "Exemple Registering Part",
					"textcolor" : [ 0.247058823529412, 0.701960784313725, 0.611764705882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-223",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1328.9473557472229, 42.105262756347656, 343.190468192100525, 62.0 ],
					"presentation_linecount" : 2,
					"text" : "Training Classification Part. and OSC send ",
					"textcolor" : [ 0.247058823529412, 0.701960784313725, 0.611764705882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1763.157877922058105, 318.96103572845459, 150.0, 62.0 ],
					"text" : "base on which label it reads it will send a bang to a random number patch to one of the samplers"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-220",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2399.75, 911.666644930839539, 462.0, 62.0 ],
					"presentation_linecount" : 2,
					"text" : "Sampler  2: Using A Sailor Moon Soundtrack. ",
					"textcolor" : [ 0.701960784313725, 0.247058823529412, 0.654901960784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2328.0, 1620.0, 150.0, 20.0 ],
					"text" : "playback speed"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-217",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1698.333292841911316, 926.595738053321838, 341.666658520698547, 52.0 ],
					"text" : "synthasizer from flucoma regression exemple",
					"textcolor" : [ 0.619607843137255, 0.850980392156863, 0.517647058823529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1313.160701304674149, 486.170209288597107, 150.0, 34.0 ],
					"presentation_linecount" : 2,
					"text" : "^  sends OSC messages back to my js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1307.160701304674149, 389.121960639953613, 150.0, 34.0 ],
					"text" : "^  tells me the poses its detecting"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-212",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1648.463453769683838, 112.76595664024353, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "6",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-211",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1454.255308747291565, 123.487807989120483, 207.446807026863098, 38.0 ],
					"presentation_linecount" : 2,
					"text" : "now open for when you want live responses"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-210",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1301.0, 211.607140839099884, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "5",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-209",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1313.392844617366791, 224.024395942687988, 95.535713374614716, 52.0 ],
					"text" : "click when ready to use live"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-208",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2023.684191226959229, 201.315787553787231, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "4",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-207",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1893.749981939792633, 209.024395942687988, 150.0, 52.0 ],
					"text" : "train the data, click multiple time to continue training"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-205",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 134.821427285671234, 730.0, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "3",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-203",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 621.071423888206482, 784.999981284141541, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "2",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 491.071423888206482, 793.0, 150.0, 103.0 ],
					"text" : "click addpoint and addlabel only once at begining, then click the label you want to register exemples too, click on another label when you want to switch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.489814519882202, 442.382975459098816, 150.0, 48.0 ],
					"text" : "make sur you are receiving the osc message"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-195",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 37.234042286872864, 456.382975459098816, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "1",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2594.999938130378723, 1081.666640877723694, 150.0, 20.0 ],
					"text" : "^   leave at 45 when start"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.156862745098039, 0.117647058823529, 0.368627450980392, 1.0 ],
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 401.0, 84.0, 1000.0, 653.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 41.0, 150.0, 62.0 ],
									"text" : "This subpatch receives a bang and returns a random number in the range [1, 45]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 282.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 41.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 66.0, 88.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 166.0, 50.0, 22.0 ],
									"text" : "186"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 241.0, 90.0, 22.0 ],
									"text" : "10.093333"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 199.0, 110.0, 22.0 ],
									"text" : "scale 0. 900. 1. 45."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 125.0, 79.0, 22.0 ],
									"text" : "random 1000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1719.480503082275391, 511.68830680847168, 100.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "p samp2Random"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.556862745098039, 0.070588235294118, 0.070588235294118, 1.0 ],
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 375.0, 226.0, 1000.0, 653.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 41.0, 150.0, 62.0 ],
									"text" : "This subpatch receives a bang and returns a random number in the range [1, 35]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 282.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 41.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 66.0, 88.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 166.0, 50.0, 22.0 ],
									"text" : "988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 241.0, 90.0, 22.0 ],
									"text" : "38.324444"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 199.0, 110.0, 22.0 ],
									"text" : "scale 0. 900. 1. 35."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 125.0, 79.0, 22.0 ],
									"text" : "random 1000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1567.166628479957581, 506.249995172023773, 93.0, 22.0 ],
					"text" : "p sampRandom"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.831372549019608, 0.72156862745098, 0.52156862745098, 1.0 ],
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 134.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 41.0, 150.0, 62.0 ],
									"text" : "This subpatch receives a bang and returns a random number in the range [-1, 3]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 282.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 66.0, 41.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 66.0, 88.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 166.0, 50.0, 22.0 ],
									"text" : "678"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 241.0, 90.0, 22.0 ],
									"text" : "2.013333"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 199.0, 107.0, 22.0 ],
									"text" : "scale 0. 900. -1. 3."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 125.0, 79.0, 22.0 ],
									"text" : "random 1000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1864.285696506500244, 578.467196464538574, 91.0, 22.0 ],
					"text" : "p normRandom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2002.965325951576233, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1935.432859063148499, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1869.199093461036682, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1802.965327858924866, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1735.432860970497131, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1669.199095368385315, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1601.666628479957581, 429.870125770568848, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1515.178556978702545, 360.714282274246216, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1601.666628479957581, 338.96103572845459, 101.0, 22.0 ],
					"text" : "route predictpoint"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.831372549019608, 0.72156862745098, 0.52156862745098, 1.0 ],
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 134.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 41.0, 150.0, 62.0 ],
									"text" : "This subpatch receives a bang and returns a random number in the range [-1, 3]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 282.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 66.0, 41.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 66.0, 88.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 166.0, 50.0, 22.0 ],
									"text" : "678"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 241.0, 90.0, 22.0 ],
									"text" : "2.013333"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 199.0, 107.0, 22.0 ],
									"text" : "scale 0. 900. -1. 3."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 125.0, 79.0, 22.0 ],
									"text" : "random 1000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1669.199095368385315, 585.467196464538574, 91.0, 22.0 ],
					"text" : "p normRandom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 1601.666628479957581, 379.220775604248047, 486.66665506362915, 22.0 ],
					"text" : "sel idle walk_left walk_right walk_front walk_back jump crouch"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-168",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 696.92314338684082, 542.769283294677734, 205.346255302429199, 38.0 ],
					"presentation_linecount" : 3,
					"text" : "takes my list of number and sends it to become a buffer"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-166",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.986096620559692, 380.121960639953613, 261.153787612915039, 52.0 ],
					"presentation_linecount" : 3,
					"text" : "unpack floats and transforms them into numerical numbers that can be read in audi format"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-165",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.538509368896484, 23.70731782913208, 148.157894134521484, 162.0 ],
					"presentation_linecount" : 11,
					"text" : "visually see the x and y floats. \n\ntotal 52\n\n-first 8 are posenet: \n-nose\n-wrist\n-shoulder\n\n-the rest are one hand "
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-163",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.153903961181641, 215.487810373306274, 148.157894134521484, 79.0 ],
					"presentation_linecount" : 5,
					"text" : "Receive OSC message from index.html (x and y position from posenet and mediapipe hand)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-161",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.333316326141357, 89.999997854232788, 273.153787612915039, 52.0 ],
					"presentation_linecount" : 11,
					"text" : "what makes my floats become a buffer to amke it as  an  audio readable so we can use flucoma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2188.0, 960.0, 150.0, 34.0 ],
					"text" : "second sampler with audio from Sailor Moon"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2490.516946315765381, 288.135579824447632, 150.0, 34.0 ],
					"text" : "reads the lenght of the audio clip"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 24.0,
					"id" : "obj-141",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2209.999947309494019, 59.999998569488525, 462.0, 62.0 ],
					"text" : "Sampler  1: Using A Sailor Moon Soundtrack. ",
					"textcolor" : [ 0.701960784313725, 0.509803921568627, 0.247058823529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 51,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 1378.688485145568848, 718.032766342163086, 725.0, 22.0 ],
					"text" : "unpack f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.647058823529412, 0.615686274509804, 0.427450980392157, 1.0 ],
					"format" : 6,
					"id" : "obj-435",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2308.0, 1652.0, 50.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-436",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 2312.0, 1696.0, 50.0, 22.0 ],
					"text" : "mc.sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-437",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 2312.0, 1740.0, 261.0, 22.0 ],
					"text" : "mc.groove~ Transformation @chans 2 @loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-438",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2556.0, 1532.0, 41.0, 22.0 ],
					"text" : "buddy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-439",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 2616.0, 1356.0, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-440",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2564.0, 1492.0, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-441",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2616.0, 1452.0, 156.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-442",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2616.0, 1408.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-443",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2680.0, 1312.0, 150.0, 20.0 ],
					"text" : "which slice we want"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.141176470588235, 0.082352941176471, 0.333333333333333, 1.0 ],
					"format" : 6,
					"id" : "obj-444",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2616.0, 1312.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-445",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2648.0, 1632.0, 147.0, 22.0 ],
					"text" : "loadmess set MoonPower"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "MoonPower",
					"id" : "obj-446",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 2720.0, 1668.0, 256.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-447",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2420.0, 1356.0, 157.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-448",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2504.0, 1260.0, 150.0, 20.0 ],
					"text" : "how many slices we want"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-449",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2528.0, 1284.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-450",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2372.0, 1220.0, 165.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-451",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2424.0, 1312.0, 32.0, 22.0 ],
					"text" : "/ 64."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-452",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 10,
					"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
					"patching_rect" : [ 2348.0, 1180.0, 113.5, 22.0 ],
					"text" : "info~ MoonPower"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-453",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2348.0, 1124.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-454",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2236.0, 1008.0, 48.0, 22.0 ],
					"text" : "replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-455",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 2236.0, 1056.0, 153.0, 22.0 ],
					"text" : "buffer~ MoonPower 4000 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-429",
					"maxclass" : "number~",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1866.666555404663086, 1610.256314277648926, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-430",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1911.538347601890564, 1474.358886480331421, 43.0, 22.0 ],
					"text" : "record"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-431",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1864.102452993392944, 1470.512732863426208, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-432",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1866.666555404663086, 1558.974266052246094, 69.0, 22.0 ],
					"text" : "sfrecord~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2936.0, 1108.0, 32.0, 22.0 ],
					"text" : "+ 36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2932.0, 1072.0, 66.0, 22.0 ],
					"text" : "random 36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2531.666606307029724, 1019.999975681304932, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.76078431372549, 0.705882352941177, 0.541176470588235, 1.0 ],
					"format" : 6,
					"id" : "obj-164",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2286.779665350914001, 699.999967455863953, 50.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 2288.474580526351929, 740.677931666374207, 50.0, 22.0 ],
					"text" : "mc.sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 2291.864410877227783, 784.745726227760315, 261.0, 22.0 ],
					"text" : "mc.groove~ Transformation @chans 2 @loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2532.542365789413452, 577.966074824333191, 41.0, 22.0 ],
					"text" : "buddy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 2624.415245175361633, 455.932182192802429, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2544.406772017478943, 540.677940964698792, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-156",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2624.415245175361633, 547.4576016664505, 156.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2624.415245175361633, 503.389807105064392, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2690.516937017440796, 408.474557280540466, 150.0, 20.0 ],
					"text" : "which slice we want"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.556862745098039, 0.035294117647059, 0.035294117647059, 1.0 ],
					"format" : 6,
					"id" : "obj-151",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2624.415245175361633, 408.474557280540466, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2273.220343947410583, 552.542347192764282, 163.0, 22.0 ],
					"text" : "loadmess set Transformation"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "Transformation",
					"id" : "obj-148",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 2380.0, 630.508445262908936, 256.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-147",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2429.5, 450.847436666488647, 157.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.59310245513916, 369.49150824546814, 150.0, 20.0 ],
					"text" : "how many slices we want"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-143",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2477.965986490249634, 369.49150824546814, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-140",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2429.5, 320.33896815776825, 165.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2434.584745526313782, 408.474557280540466, 32.0, 22.0 ],
					"text" : "/ 64."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 10,
					"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
					"patching_rect" : [ 2365.380000000000109, 266.101682543754578, 118.0, 22.0 ],
					"text" : "info~ Transformation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2369.49141526222229, 225.423718333244324, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2216.920000000000073, 149.230783462524414, 48.0, 22.0 ],
					"text" : "replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 2216.949049472808838, 188.135584473609924, 169.0, 22.0 ],
					"text" : "buffer~ Transformation 4000 2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-120",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 231.707322597503662, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-121",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 298.780494928359985, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 263.414640426635742, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-83",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 230.487810373306274, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-84",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 300.000007152557373, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-85",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 60.975611209869385, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-86",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 264.63415265083313, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 230.487810373306274, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-88",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 300.000007152557373, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-89",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-90",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 263.414640426635742, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-98",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 230.487810373306274, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-99",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 298.780494928359985, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-108",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 129.268295764923096, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-109",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 263.414640426635742, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-113",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 230.487810373306274, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-115",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 298.780494928359985, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-117",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.79469108581543, 164.634150266647339, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-118",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 263.414640426635742, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-119",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 230.487810373306274, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 164.634150266647339, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-69",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 129.268295764923096, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-71",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-72",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 60.975611209869385, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-73",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.989814519882202, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-52",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 165.853662490844727, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-54",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-55",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 130.487807989120483, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-57",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-59",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 60.975611209869385, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-66",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.282499074935913, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 165.853662490844727, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-37",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-40",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 129.268295764923096, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-44",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-48",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 60.975611209869385, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-51",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.453232526779175, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-19",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 164.634150266647339, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 129.268295764923096, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 60.975611209869385, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-34",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.062990427017212, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.801169991493225, 1057.0, 110.0, 22.0 ],
					"text" : "read mymodel.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1648.463453769683838, 219.37984836101532, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1618.181802749633789, 193.506491661071777, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.301169991493225, 1088.157884359359741, 133.0, 22.0 ],
					"text" : "read myposeLabel.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.801169991493225, 1120.0, 130.0, 22.0 ],
					"text" : "read MyPoseData.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.212759375572205, 912.765950918197632, 41.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 730.851058602333069, 1005.319141745567322, 81.0, 84.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 703.191484332084656, 1105.319141030311584, 168.0, 22.0 ],
					"text" : "print fluid.labelset~ @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 730.851058602333069, 952.127652764320374, 74.0, 22.0 ],
					"text" : "route dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.425525546073914, 888.297865986824036, 35.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 873.40424907207489, 862.7659512758255, 36.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 709.57446300983429, 902.127653121948242, 147.0, 22.0 ],
					"text" : "fluid.labelset~ poseLabels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 914.0, 41.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.0, 995.0, 81.0, 84.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 1100.0, 179.0, 22.0 ],
					"text" : "print fluid.dataset~ @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 349.0, 941.0, 74.0, 22.0 ],
					"text" : "route dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.0, 883.0, 35.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 258.0, 858.0, 36.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 320.0, 897.0, 135.0, 22.0 ],
					"text" : "fluid.dataset~ poseData"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1593.421037435531616, 1446.052617788314819, 80.157894134521484, 24.0 ],
					"text" : "audio on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1695.006477355957031, 1432.46751880645752, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1693.506477355957031, 1227.974014282226562, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1221.538578033447266, 1063.077024459838867, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1223.07703971862793, 883.077007293701172, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1307.160701304674149, 364.893614411354065, 108.0, 22.0 ],
					"text" : "predictpoint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1420.731741189956665, 239.024395942687988, 117.0, 22.0 ],
					"text" : "predictpoint posebuf"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1425.97401237487793, 279.220776557922363, 557.0, 22.0 ],
					"text" : "fluid.mlpclassifier~ @hiddenlayers 128 64 @activation 1 @learnrate 0.01 @maxiter 5000 @batchsize 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.361698269844055, 944.680844306945801, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.297868132591248, 944.680844306945801, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 649.999995350837708, 729.0, 29.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 314.0, 793.0, 117.0, 22.0 ],
					"text" : "addpoint $1 posebuf"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 670.212761163711548, 793.0, 87.0, 22.0 ],
					"text" : "addlabel $1 $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 314.0, 729.0, 181.0, 22.0 ],
					"text" : "combine example- s @triggers 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1320.000125885009766, 1040.000099182128906, 148.157894134521484, 38.0 ],
					"text" : "adjust parameters for the chaotic synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 1213.846269607543945, 844.61546516418457, 169.0, 22.0 ],
					"text" : "fluid.buf2list @source posebuf"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1229.230886459350586, 800.000076293945312, 89.0, 22.0 ],
					"text" : "sel predictpoint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "buffer" ],
					"patching_rect" : [ 1150.769340515136719, 1109.230875015258789, 191.0, 22.0 ],
					"text" : "fluid.list2buf @destination posebuf"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 10,
					"contdata" : 1,
					"ghostbar" : 100,
					"id" : "obj-47",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1152.307802200317383, 921.538549423217773, 237.0, 113.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 6
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ -231.0, 112.0, 1406.0, 1077.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-41",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1089.0, 541.0, 154.0, 144.0 ],
									"text" : "This part of the patch measures the loudness of the signal emitted after the lores~ object.\n\nThe values (in decibels) are then mapped back into the lores~ object to control the frequency of the filter, creating a feedback loop."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 265.0, 29.5, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 724.5, 51.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 724.5, 89.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 724.5, 118.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 833.0, 571.0, 47.0, 22.0 ],
									"text" : "zl.nth 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 882.0, 259.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 948.5, 620.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 753.5, 227.454323570432337, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 771.5, 51.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 882.0, 329.0, 42.0, 22.0 ],
									"text" : "* 0.96"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 833.0, 628.75, 44.0, 22.0 ],
									"text" : "+ 120."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 833.0, 599.5, 73.0, 22.0 ],
									"text" : "clip -120. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 541.0, 42.0, 22.0 ],
									"text" : "*~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 882.0, 360.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 882.0, 391.0, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 833.0, 716.5, 119.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 948.5, 658.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 948.5, 687.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 833.0, 745.75, 48.0, 22.0 ],
									"text" : "!-~ 130"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 833.0, 775.0, 41.0, 22.0 ],
									"text" : "mtof~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 833.0, 658.0, 34.0, 22.0 ],
									"text" : "$1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 833.0, 687.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 833.0, 541.0, 237.0, 22.0 ],
									"text" : "fluid.loudness~ @hopsize 64 @truepeak 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 419.0, 41.0, 22.0 ],
									"text" : "atan~"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 753.5, 354.0, 48.0, 22.0 ],
									"text" : "dbtoa~"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 753.5, 263.919194560669439, 35.0, 22.0 ],
									"text" : "* 50."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 753.5, 293.946129707112959, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 753.5, 323.97306485355648, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 296.101449275362313, 39.0, 22.0 ],
									"text" : "*~ 69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 771.5, 89.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 771.5, 118.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 150.0, 45.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 468.0, 203.0, 22.0 ],
									"text" : "lores~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 391.0, 74.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 21.0, 88.0, 22.0 ],
									"text" : "receive~ feed1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 748.0, 541.0, 75.0, 22.0 ],
									"text" : "send~ feed2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 327.202898550724683, 41.0, 22.0 ],
									"text" : "mtof~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 358.304347826086996, 45.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-83",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 698.0, 584.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 436.0, 541.0, 154.0, 144.0 ],
									"text" : "This part of the patch measures the loudness of the signal emitted after the lores~ object.\n\nThe values (in decibels) are then mapped back into the lores~ object to control the frequency of the filter, creating a feedback loop."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 265.0, 29.5, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 71.5, 51.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 71.5, 89.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 71.5, 118.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 180.0, 571.0, 47.0, 22.0 ],
									"text" : "zl.nth 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 229.0, 259.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 295.5, 620.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 100.5, 227.454323570432337, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 118.5, 51.75, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 229.0, 329.0, 42.0, 22.0 ],
									"text" : "* 0.96"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 180.0, 628.75, 44.0, 22.0 ],
									"text" : "+ 120."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 599.5, 73.0, 22.0 ],
									"text" : "clip -120. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 541.0, 42.0, 22.0 ],
									"text" : "*~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 229.0, 360.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 229.0, 391.0, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 180.0, 716.5, 119.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.5, 658.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 295.5, 687.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 180.0, 745.75, 48.0, 22.0 ],
									"text" : "!-~ 130"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 180.0, 775.0, 41.0, 22.0 ],
									"text" : "mtof~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 658.0, 34.0, 22.0 ],
									"text" : "$1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 180.0, 687.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 180.0, 541.0, 237.0, 22.0 ],
									"text" : "fluid.loudness~ @hopsize 64 @truepeak 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 419.0, 41.0, 22.0 ],
									"text" : "atan~"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.5, 354.0, 48.0, 22.0 ],
									"text" : "dbtoa~"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 100.5, 263.919194560669439, 35.0, 22.0 ],
									"text" : "* 50."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.5, 293.946129707112959, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 100.5, 323.97306485355648, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 296.101449275362313, 39.0, 22.0 ],
									"text" : "*~ 69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 118.5, 89.0, 41.0, 22.0 ],
									"text" : "$1 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 118.5, 118.25, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 150.0, 45.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 468.0, 203.0, 22.0 ],
									"text" : "lores~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 391.0, 74.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 21.0, 90.0, 22.0 ],
									"text" : "receive~ feed2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 95.0, 541.0, 77.0, 22.0 ],
									"text" : "send~ feed1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 327.202898550724683, 41.0, 22.0 ],
									"text" : "mtof~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 358.304347826086996, 45.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 584.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 3,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-30",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 174.0, 533.75, 420.0, 287.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 3,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-84",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 827.0, 533.75, 420.0, 287.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"midpoints" : [ 128.0, 214.0, 65.0, 214.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"midpoints" : [ 189.5, 807.0, 424.0, 807.0, 424.0, 457.0, 146.5, 457.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 1 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 2 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 1 ],
									"midpoints" : [ 842.5, 807.0, 1077.0, 807.0, 1077.0, 457.0, 799.5, 457.0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 54.5, 526.0, 189.5, 526.0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 54.5, 526.0, 104.5, 526.0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 54.5, 493.0, 54.5, 493.0 ],
									"order" : 2,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"midpoints" : [ 781.0, 214.0, 718.0, 214.0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"midpoints" : [ 707.5, 175.0, 707.5, 175.0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"midpoints" : [ 707.5, 493.0, 707.5, 493.0 ],
									"order" : 2,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 707.5, 526.0, 842.5, 526.0 ],
									"order" : 0,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"midpoints" : [ 707.5, 526.0, 757.5, 526.0 ],
									"order" : 1,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 54.5, 175.0, 54.5, 175.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "max6box",
								"default" : 								{
									"accentcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.5 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "max6inlet",
								"default" : 								{
									"color" : [ 0.423529, 0.372549, 0.27451, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "max6message",
								"default" : 								{
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0,
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
										"color2" : [ 0.788235, 0.788235, 0.788235, 1.0 ],
										"proportion" : 0.39,
										"type" : "gradient"
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "max6box",
								"multi" : 0
							}
, 							{
								"name" : "max6outlet",
								"default" : 								{
									"color" : [ 0.0, 0.454902, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 1504.615528106689453, 863.077005386352539, 132.0, 22.0 ],
					"text" : "p \"chaotic synthesiser\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1319.160701304674149, 460.638294577598572, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 9130"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1577.922062873840332, 184.146345853805542, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1745.595194935798645, 226.423718333244324, 137.0, 22.0 ],
					"text" : "fit poseData poseLabels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1420.731741189956665, 130.487807989120483, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.425525903701782, 686.170207858085632, 29.5, 22.0 ],
					"text" : "idle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1420.731741189956665, 184.146345853805542, 69.0, 22.0 ],
					"text" : "qmetro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 835.106377005577087, 760.63829243183136, 37.0, 22.0 ],
					"text" : "climb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 835.106377005577087, 723.404250144958496, 35.0, 22.0 ],
					"text" : "jump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.851057887077332, 797.872334718704224, 45.0, 22.0 ],
					"text" : "crouch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 887.234036207199097, 723.404250144958496, 63.0, 22.0 ],
					"text" : "walk_right"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.425525546073914, 686.170207858085632, 55.0, 22.0 ],
					"text" : "walk_left"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 885.106376647949219, 797.872334718704224, 65.0, 22.0 ],
					"text" : "walk_back"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 887.234036207199097, 760.63829243183136, 63.0, 22.0 ],
					"text" : "walk_front"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 164.634150266647339, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 196.341468095779419, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-14",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 129.268295764923096, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-13",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 96.341465711593628, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 59.756098985671997, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-11",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.916650533676147, 31.70731782913208, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 991.0, 104.999997854232788, 230.0, 22.0 ],
					"text" : "buffer~ posebuf @samps 52 @autosize 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "buffer" ],
					"patching_rect" : [ 495.0, 550.769283294677734, 191.0, 22.0 ],
					"text" : "fluid.list2buf @destination posebuf"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 496.0, 486.153892517089844, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 51,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 496.0, 395.121960639953613, 725.0, 22.0 ],
					"text" : "pack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 51,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 496.0, 325.609763860702515, 725.0, 22.0 ],
					"text" : "unpack f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 496.0, 223.0, 97.0, 22.0 ],
					"text" : "udpreceive 9129"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 314.0, 681.0, 61.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 178.723402976989746, 718.032766342163086, 74.602344274520874, 74.602344274520874 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-171",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1290.909078598022461, 27.272727012634277, 788.930751204490662, 601.29869556427002 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-169",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.999999403953552, 10.613835394382477, 1223.333304166793823, 597.719483435153961 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-189",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.736758828163147, 651.623456239700317, 1065.116240978240967, 495.348819494247437 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-191",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2166.071407914161682, 30.357142567634583, 710.169458508491516, 833.898266315460205 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-192",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2159.999948501586914, 891.666645407676697, 919.999978065490723, 964.999976992607117 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontsize" : 14.0,
					"id" : "obj-200",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 37.234042286872864, 738.0, 141.0, 43.0 ],
					"text" : "click to save exemple"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.247058823529412, 0.635294117647059, 0.686274509803922, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-170",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.978723168373108, 627.48935729265213, 942.553184747695923, 571.276591658592224 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 894.606376647949219, 831.0, 768.0, 831.0, 768.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 899.925525546073914, 711.0, 669.999995350837708, 711.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 445.5, 936.0, 358.5, 936.0 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 929.712759375572205, 936.0, 867.0, 936.0, 867.0, 888.0, 719.07446300983429, 888.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"midpoints" : [ 740.351058602333069, 975.0, 740.351058602333069, 975.0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 795.351058602333069, 990.0, 712.691484332084656, 990.0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 899.925525546073914, 912.0, 867.0, 912.0, 867.0, 888.0, 719.07446300983429, 888.0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 882.90424907207489, 885.0, 719.07446300983429, 885.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 847.07446300983429, 939.0, 740.351058602333069, 939.0 ],
					"source" : [ "obj-107", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1627.681802749633789, 225.0, 1416.0, 225.0, 1416.0, 273.0, 1435.47401237487793, 273.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1657.963453769683838, 264.0, 1437.0, 264.0, 1437.0, 276.0, 1435.47401237487793, 276.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"midpoints" : [ 2376.449049472808838, 213.0, 2378.99141526222229, 213.0 ],
					"source" : [ "obj-129", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 2226.420000000000073, 174.0, 2226.449049472808838, 174.0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 2378.99141526222229, 261.0, 2374.880000000000109, 261.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"midpoints" : [ 2440.880000000000109, 291.0, 2439.0, 291.0 ],
					"source" : [ "obj-137", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 2444.084745526313782, 447.0, 2439.0, 447.0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"midpoints" : [ 2439.0, 405.0, 2444.084745526313782, 405.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 1 ],
					"midpoints" : [ 2487.465986490249634, 405.0, 2457.084745526313782, 405.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 2439.0, 489.0, 2633.915245175361633, 489.0 ],
					"order" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 1 ],
					"midpoints" : [ 2439.0, 525.0, 2564.406772017478943, 525.0 ],
					"order" : 1,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 2282.720343947410583, 615.0, 2389.5, 615.0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 2633.915245175361633, 432.0, 2633.915245175361633, 432.0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"midpoints" : [ 2633.915245175361633, 528.0, 2633.915245175361633, 528.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 2633.915245175361633, 570.0, 2583.0, 570.0, 2583.0, 537.0, 2553.906772017478943, 537.0 ],
					"order" : 1,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 1 ],
					"midpoints" : [ 2633.915245175361633, 570.0, 2564.042365789413452, 570.0 ],
					"order" : 0,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 2553.906772017478943, 564.0, 2542.042365789413452, 564.0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 1 ],
					"midpoints" : [ 2644.415245175361633, 480.0, 2644.415245175361633, 480.0 ],
					"source" : [ "obj-158", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 2633.915245175361633, 480.0, 2633.915245175361633, 480.0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 2 ],
					"midpoints" : [ 2564.042365789413452, 615.0, 2508.0, 615.0 ],
					"order" : 0,
					"source" : [ "obj-159", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 3 ],
					"midpoints" : [ 2542.042365789413452, 615.0, 2567.25, 615.0 ],
					"order" : 0,
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 1 ],
					"midpoints" : [ 2564.042365789413452, 615.0, 2367.0, 615.0, 2367.0, 771.0, 2422.364410877227783, 771.0 ],
					"order" : 1,
					"source" : [ "obj-159", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 2 ],
					"midpoints" : [ 2542.042365789413452, 615.0, 2646.0, 615.0, 2646.0, 771.0, 2543.364410877227783, 771.0 ],
					"order" : 1,
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 2301.364410877227783, 876.0, 2145.0, 876.0, 2145.0, 1212.0, 1732.006477355957031, 1212.0 ],
					"order" : 0,
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 2301.364410877227783, 876.0, 2145.0, 876.0, 2145.0, 1212.0, 1703.006477355957031, 1212.0 ],
					"order" : 1,
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"midpoints" : [ 2297.974580526351929, 777.0, 2301.364410877227783, 777.0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"midpoints" : [ 2296.279665350914001, 723.0, 2297.974580526351929, 723.0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"midpoints" : [ 1611.166628479957581, 402.0, 1611.166628479957581, 402.0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"midpoints" : [ 1677.976150631904602, 402.0, 1678.699095368385315, 402.0 ],
					"source" : [ "obj-174", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"midpoints" : [ 1744.785672783851624, 402.0, 1744.932860970497131, 402.0 ],
					"source" : [ "obj-174", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"midpoints" : [ 1811.595194935798645, 426.0, 1812.465327858924866, 426.0 ],
					"source" : [ "obj-174", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"midpoints" : [ 1878.404717087745667, 402.0, 1878.699093461036682, 402.0 ],
					"source" : [ "obj-174", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"midpoints" : [ 1945.214239239692688, 402.0, 1944.932859063148499, 402.0 ],
					"source" : [ "obj-174", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"midpoints" : [ 2012.023761391639709, 402.0, 2012.465325951576233, 402.0 ],
					"source" : [ "obj-174", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 1611.166628479957581, 363.0, 1611.166628479957581, 363.0 ],
					"order" : 0,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 1 ],
					"midpoints" : [ 1611.166628479957581, 363.0, 1575.0, 363.0, 1575.0, 357.0, 1555.678556978702545, 357.0 ],
					"order" : 1,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"midpoints" : [ 1611.166628479957581, 456.0, 1585.666628479957581, 456.0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 896.734036207199097, 747.0, 690.0, 747.0, 690.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1678.699095368385315, 456.0, 1678.699095368385315, 456.0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"midpoints" : [ 1744.932860970497131, 456.0, 1731.0, 456.0, 1731.0, 462.0, 1728.980503082275391, 462.0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"midpoints" : [ 1812.465327858924866, 498.0, 1873.785696506500244, 498.0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"midpoints" : [ 1878.699093461036682, 564.0, 1873.785696506500244, 564.0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1944.932859063148499, 564.0, 1678.699095368385315, 564.0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"midpoints" : [ 2012.465325951576233, 636.0, 2151.0, 636.0, 2151.0, 897.0, 2941.5, 897.0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"midpoints" : [ 1873.785696506500244, 636.0, 2151.0, 636.0, 2151.0, 1638.0, 2317.5, 1638.0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 1576.666628479957581, 543.0, 2259.0, 543.0, 2259.0, 483.0, 2610.0, 483.0, 2610.0, 405.0, 2633.915245175361633, 405.0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-444", 0 ],
					"midpoints" : [ 1728.980503082275391, 564.0, 2106.0, 564.0, 2106.0, 636.0, 2151.0, 636.0, 2151.0, 1299.0, 2514.0, 1299.0, 2514.0, 1317.0, 2601.0, 1317.0, 2601.0, 1308.0, 2625.5, 1308.0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 188.223402976989746, 804.0, 300.0, 804.0, 300.0, 678.0, 323.5, 678.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 840.351057887077332, 822.0, 768.0, 822.0, 768.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 896.734036207199097, 783.0, 768.0, 783.0, 768.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"midpoints" : [ 1766.313836415608648, 492.0, 1728.980503082275391, 492.0 ],
					"source" : [ "obj-227", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"midpoints" : [ 1622.999961813290838, 495.0, 1578.0, 495.0, 1578.0, 501.0, 1576.666628479957581, 501.0 ],
					"source" : [ "obj-228", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 844.606377005577087, 747.0, 690.0, 747.0, 690.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 0 ],
					"midpoints" : [ 2565.5, 1248.0, 2499.0, 1248.0, 2499.0, 1281.0, 2537.5, 1281.0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 2547.792365789413452, 366.0, 2487.465986490249634, 366.0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 2691.642831563949585, 399.0, 2634.0, 399.0, 2634.0, 405.0, 2633.915245175361633, 405.0 ],
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"midpoints" : [ 2288.96426397562027, 684.0, 2296.279665350914001, 684.0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"midpoints" : [ 2280.035692632198334, 1638.0, 2317.5, 1638.0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-444", 0 ],
					"midpoints" : [ 2717.535688459873199, 1299.0, 2625.5, 1299.0 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 844.606377005577087, 783.0, 768.0, 783.0, 768.0, 726.0, 669.999995350837708, 726.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 1430.231741189956665, 207.0, 1430.231741189956665, 207.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 323.5, 714.0, 485.5, 714.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 849.925525903701782, 711.0, 669.999995350837708, 711.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"midpoints" : [ 2945.5, 1131.0, 2877.0, 1131.0, 2877.0, 1005.0, 2541.166606307029724, 1005.0 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"midpoints" : [ 2941.5, 1104.0, 2945.5, 1104.0 ],
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 0 ],
					"midpoints" : [ 2541.166606307029724, 1257.0, 2499.0, 1257.0, 2499.0, 1281.0, 2537.5, 1281.0 ],
					"source" : [ "obj-316", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1430.231741189956665, 156.0, 1430.231741189956665, 156.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1755.095194935798645, 264.0, 1437.0, 264.0, 1437.0, 276.0, 1435.47401237487793, 276.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1587.422062873840332, 225.0, 1416.0, 225.0, 1416.0, 273.0, 1435.47401237487793, 273.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 1238.730886459350586, 825.0, 1223.346269607543945, 825.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 505.5, 246.0, 505.5, 246.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"midpoints" : [ 1223.346269607543945, 879.0, 1232.57703971862793, 879.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"midpoints" : [ 1921.038347601890564, 1545.0, 1876.166555404663086, 1545.0 ],
					"source" : [ "obj-430", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"midpoints" : [ 1873.602452993392944, 1554.0, 1876.166555404663086, 1554.0 ],
					"source" : [ "obj-431", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-429", 0 ],
					"midpoints" : [ 1876.166555404663086, 1581.0, 1876.166555404663086, 1581.0 ],
					"source" : [ "obj-432", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 0 ],
					"midpoints" : [ 2317.5, 1692.0, 2321.5, 1692.0 ],
					"source" : [ "obj-435", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 0 ],
					"midpoints" : [ 2321.5, 1719.0, 2321.5, 1719.0 ],
					"source" : [ "obj-436", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 2321.5, 1764.0, 1752.0, 1764.0, 1752.0, 1224.0, 1732.006477355957031, 1224.0 ],
					"order" : 0,
					"source" : [ "obj-437", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 2321.5, 1764.0, 1752.0, 1764.0, 1752.0, 1212.0, 1703.006477355957031, 1212.0 ],
					"order" : 1,
					"source" : [ "obj-437", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 1 ],
					"midpoints" : [ 2587.5, 1725.0, 2442.5, 1725.0 ],
					"order" : 1,
					"source" : [ "obj-438", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 2 ],
					"midpoints" : [ 2565.5, 1737.0, 2563.5, 1737.0 ],
					"order" : 1,
					"source" : [ "obj-438", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 2 ],
					"midpoints" : [ 2587.5, 1617.0, 2848.0, 1617.0 ],
					"order" : 0,
					"source" : [ "obj-438", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 3 ],
					"midpoints" : [ 2565.5, 1617.0, 2907.25, 1617.0 ],
					"order" : 0,
					"source" : [ "obj-438", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-442", 1 ],
					"midpoints" : [ 2636.0, 1380.0, 2636.0, 1380.0 ],
					"source" : [ "obj-439", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-442", 0 ],
					"midpoints" : [ 2625.5, 1380.0, 2625.5, 1380.0 ],
					"source" : [ "obj-439", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-438", 0 ],
					"midpoints" : [ 2573.5, 1515.0, 2565.5, 1515.0 ],
					"source" : [ "obj-440", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-438", 1 ],
					"midpoints" : [ 2625.5, 1527.0, 2587.5, 1527.0 ],
					"order" : 0,
					"source" : [ "obj-441", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-440", 0 ],
					"midpoints" : [ 2625.5, 1476.0, 2573.5, 1476.0 ],
					"order" : 1,
					"source" : [ "obj-441", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-441", 0 ],
					"midpoints" : [ 2625.5, 1431.0, 2625.5, 1431.0 ],
					"source" : [ "obj-442", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-439", 0 ],
					"midpoints" : [ 2625.5, 1335.0, 2625.5, 1335.0 ],
					"source" : [ "obj-444", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 0 ],
					"midpoints" : [ 2657.5, 1665.0, 2729.5, 1665.0 ],
					"source" : [ "obj-445", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-440", 1 ],
					"midpoints" : [ 2429.5, 1479.0, 2584.0, 1479.0 ],
					"order" : 1,
					"source" : [ "obj-447", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-442", 0 ],
					"midpoints" : [ 2429.5, 1395.0, 2625.5, 1395.0 ],
					"order" : 0,
					"source" : [ "obj-447", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-451", 1 ],
					"midpoints" : [ 2537.5, 1308.0, 2446.5, 1308.0 ],
					"source" : [ "obj-449", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-451", 0 ],
					"midpoints" : [ 2381.5, 1299.0, 2433.5, 1299.0 ],
					"source" : [ "obj-450", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-447", 0 ],
					"midpoints" : [ 2433.5, 1335.0, 2429.5, 1335.0 ],
					"source" : [ "obj-451", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 0 ],
					"midpoints" : [ 2420.5, 1203.0, 2382.0, 1203.0, 2382.0, 1215.0, 2381.5, 1215.0 ],
					"source" : [ "obj-452", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-452", 0 ],
					"midpoints" : [ 2357.5, 1149.0, 2357.5, 1149.0 ],
					"source" : [ "obj-453", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-455", 0 ],
					"midpoints" : [ 2245.5, 1032.0, 2245.5, 1032.0 ],
					"source" : [ "obj-454", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-453", 0 ],
					"midpoints" : [ 2379.5, 1110.0, 2357.5, 1110.0 ],
					"source" : [ "obj-455", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 1161.807802200317383, 1050.0, 1231.038578033447266, 1050.0 ],
					"order" : 1,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 1161.807802200317383, 1035.0, 1137.0, 1035.0, 1137.0, 714.0, 1388.188485145568848, 714.0 ],
					"order" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 323.5, 882.0, 329.5, 882.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 1169.139999999999873, 357.0, 39.0, 357.0, 39.0, 126.0, 64.29469108581543, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 731.419999999999959, 357.0, 321.0, 357.0, 321.0, 258.0, 343.562990427017212, 258.0 ],
					"order" : 1,
					"source" : [ "obj-5", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 505.5, 348.0, 456.0, 348.0, 456.0, 18.0, 409.416650533676147, 18.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"midpoints" : [ 717.299999999999955, 357.0, 321.0, 357.0, 321.0, 225.0, 343.562990427017212, 225.0 ],
					"order" : 1,
					"source" : [ "obj-5", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"midpoints" : [ 618.460000000000036, 357.0, 456.0, 357.0, 456.0, 294.0, 409.416650533676147, 294.0 ],
					"order" : 1,
					"source" : [ "obj-5", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 1183.259999999999991, 357.0, 39.0, 357.0, 39.0, 159.0, 64.29469108581543, 159.0 ],
					"order" : 1,
					"source" : [ "obj-5", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"midpoints" : [ 604.340000000000032, 357.0, 456.0, 357.0, 456.0, 258.0, 409.416650533676147, 258.0 ],
					"order" : 1,
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"midpoints" : [ 590.220000000000027, 357.0, 456.0, 357.0, 456.0, 225.0, 409.416650533676147, 225.0 ],
					"order" : 1,
					"source" : [ "obj-5", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 519.620000000000005, 357.0, 456.0, 357.0, 456.0, 54.0, 409.416650533676147, 54.0 ],
					"order" : 1,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"midpoints" : [ 1211.5, 357.0, 51.0, 357.0, 51.0, 228.0, 64.29469108581543, 228.0 ],
					"order" : 1,
					"source" : [ "obj-5", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"midpoints" : [ 1197.380000000000109, 357.0, 39.0, 357.0, 39.0, 192.0, 64.29469108581543, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 533.740000000000009, 357.0, 456.0, 357.0, 456.0, 93.0, 409.416650533676147, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 547.860000000000014, 357.0, 456.0, 357.0, 456.0, 126.0, 409.416650533676147, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 576.100000000000023, 357.0, 456.0, 357.0, 456.0, 192.0, 409.416650533676147, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 561.980000000000018, 357.0, 456.0, 357.0, 456.0, 159.0, 409.416650533676147, 159.0 ],
					"order" : 1,
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 689.059999999999945, 357.0, 321.0, 357.0, 321.0, 159.0, 343.562990427017212, 159.0 ],
					"order" : 1,
					"source" : [ "obj-5", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 703.180000000000064, 357.0, 321.0, 357.0, 321.0, 192.0, 343.562990427017212, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 674.940000000000055, 357.0, 321.0, 357.0, 321.0, 126.0, 343.562990427017212, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 660.819999999999936, 357.0, 321.0, 357.0, 321.0, 93.0, 343.562990427017212, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 646.700000000000045, 357.0, 321.0, 357.0, 321.0, 57.0, 343.562990427017212, 57.0 ],
					"order" : 1,
					"source" : [ "obj-5", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 632.579999999999927, 357.0, 456.0, 357.0, 456.0, 18.0, 343.562990427017212, 18.0 ],
					"order" : 1,
					"source" : [ "obj-5", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 802.019999999999982, 357.0, 315.0, 357.0, 315.0, 162.0, 267.953232526779175, 162.0 ],
					"order" : 1,
					"source" : [ "obj-5", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 816.139999999999986, 357.0, 315.0, 357.0, 315.0, 192.0, 267.953232526779175, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 787.899999999999977, 357.0, 315.0, 357.0, 315.0, 126.0, 267.953232526779175, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 773.779999999999973, 357.0, 315.0, 357.0, 315.0, 93.0, 267.953232526779175, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 759.659999999999968, 357.0, 315.0, 357.0, 315.0, 57.0, 267.953232526779175, 57.0 ],
					"order" : 1,
					"source" : [ "obj-5", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 759.659999999999968, 357.0, 315.0, 357.0, 315.0, 18.0, 267.953232526779175, 18.0 ],
					"order" : 2,
					"source" : [ "obj-5", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 929.100000000000023, 357.0, 243.0, 357.0, 243.0, 162.0, 194.782499074935913, 162.0 ],
					"order" : 1,
					"source" : [ "obj-5", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 943.220000000000027, 357.0, 243.0, 357.0, 243.0, 192.0, 194.782499074935913, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 914.980000000000018, 357.0, 243.0, 357.0, 243.0, 126.0, 194.782499074935913, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 900.860000000000014, 357.0, 243.0, 357.0, 243.0, 93.0, 194.782499074935913, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 886.740000000000009, 357.0, 243.0, 357.0, 243.0, 57.0, 194.782499074935913, 57.0 ],
					"order" : 1,
					"source" : [ "obj-5", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 50 ],
					"midpoints" : [ 1211.5, 348.0, 1211.5, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 49 ],
					"midpoints" : [ 1197.380000000000109, 348.0, 1197.380000000000109, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 48 ],
					"midpoints" : [ 1183.259999999999991, 348.0, 1183.259999999999991, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 47 ],
					"midpoints" : [ 1169.139999999999873, 348.0, 1169.139999999999873, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 46 ],
					"midpoints" : [ 1155.019999999999982, 348.0, 1155.019999999999982, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 45 ],
					"midpoints" : [ 1140.900000000000091, 348.0, 1140.900000000000091, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 44 ],
					"midpoints" : [ 1126.779999999999973, 348.0, 1126.779999999999973, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 43 ],
					"midpoints" : [ 1112.659999999999854, 348.0, 1112.659999999999854, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 42 ],
					"midpoints" : [ 1098.539999999999964, 348.0, 1098.539999999999964, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 41 ],
					"midpoints" : [ 1084.420000000000073, 348.0, 1084.420000000000073, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 40 ],
					"midpoints" : [ 1070.299999999999955, 348.0, 1070.299999999999955, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 39 ],
					"midpoints" : [ 1056.179999999999836, 348.0, 1056.179999999999836, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 38 ],
					"midpoints" : [ 1042.059999999999945, 348.0, 1042.059999999999945, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 37 ],
					"midpoints" : [ 1027.940000000000055, 348.0, 1027.940000000000055, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 36 ],
					"midpoints" : [ 1013.819999999999936, 348.0, 1013.819999999999936, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 35 ],
					"midpoints" : [ 999.700000000000045, 348.0, 999.700000000000045, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 34 ],
					"midpoints" : [ 985.579999999999927, 348.0, 985.579999999999927, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 33 ],
					"midpoints" : [ 971.460000000000036, 348.0, 971.460000000000036, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 32 ],
					"midpoints" : [ 957.339999999999918, 348.0, 957.339999999999918, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 31 ],
					"midpoints" : [ 943.220000000000027, 348.0, 943.220000000000027, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 30 ],
					"midpoints" : [ 929.100000000000023, 348.0, 929.100000000000023, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 29 ],
					"midpoints" : [ 914.980000000000018, 348.0, 914.980000000000018, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 28 ],
					"midpoints" : [ 900.860000000000014, 348.0, 900.860000000000014, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 27 ],
					"midpoints" : [ 886.740000000000009, 348.0, 886.740000000000009, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 26 ],
					"midpoints" : [ 872.620000000000005, 348.0, 872.620000000000005, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 25 ],
					"midpoints" : [ 858.5, 348.0, 858.5, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 24 ],
					"midpoints" : [ 844.379999999999995, 348.0, 844.379999999999995, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 23 ],
					"midpoints" : [ 830.259999999999991, 348.0, 830.259999999999991, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 22 ],
					"midpoints" : [ 816.139999999999986, 348.0, 816.139999999999986, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 21 ],
					"midpoints" : [ 802.019999999999982, 348.0, 802.019999999999982, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 20 ],
					"midpoints" : [ 787.899999999999977, 348.0, 787.899999999999977, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 19 ],
					"midpoints" : [ 773.779999999999973, 348.0, 773.779999999999973, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 18 ],
					"midpoints" : [ 759.659999999999968, 348.0, 759.659999999999968, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 17 ],
					"midpoints" : [ 745.539999999999964, 348.0, 745.539999999999964, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 16 ],
					"midpoints" : [ 731.419999999999959, 348.0, 731.419999999999959, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 15 ],
					"midpoints" : [ 717.299999999999955, 348.0, 717.299999999999955, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 14 ],
					"midpoints" : [ 703.180000000000064, 348.0, 703.180000000000064, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 13 ],
					"midpoints" : [ 689.059999999999945, 348.0, 689.059999999999945, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 12 ],
					"midpoints" : [ 674.940000000000055, 348.0, 674.940000000000055, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 11 ],
					"midpoints" : [ 660.819999999999936, 348.0, 660.819999999999936, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 10 ],
					"midpoints" : [ 646.700000000000045, 348.0, 646.700000000000045, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 9 ],
					"midpoints" : [ 632.579999999999927, 348.0, 632.579999999999927, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 8 ],
					"midpoints" : [ 618.460000000000036, 348.0, 618.460000000000036, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 7 ],
					"midpoints" : [ 604.340000000000032, 348.0, 604.340000000000032, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 6 ],
					"midpoints" : [ 590.220000000000027, 348.0, 590.220000000000027, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 5 ],
					"midpoints" : [ 576.100000000000023, 348.0, 576.100000000000023, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 4 ],
					"midpoints" : [ 561.980000000000018, 348.0, 561.980000000000018, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 3 ],
					"midpoints" : [ 547.860000000000014, 348.0, 547.860000000000014, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"midpoints" : [ 533.740000000000009, 348.0, 533.740000000000009, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 519.620000000000005, 348.0, 519.620000000000005, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 505.5, 348.0, 505.5, 348.0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 872.620000000000005, 357.0, 243.0, 357.0, 243.0, 18.0, 194.782499074935913, 18.0 ],
					"order" : 1,
					"source" : [ "obj-5", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 1056.179999999999836, 357.0, 243.0, 357.0, 243.0, 159.0, 126.489814519882202, 159.0 ],
					"order" : 1,
					"source" : [ "obj-5", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 1070.299999999999955, 357.0, 243.0, 357.0, 243.0, 192.0, 126.489814519882202, 192.0 ],
					"order" : 1,
					"source" : [ "obj-5", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 1042.059999999999945, 357.0, 243.0, 357.0, 243.0, 126.0, 126.489814519882202, 126.0 ],
					"order" : 1,
					"source" : [ "obj-5", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 1027.940000000000055, 357.0, 243.0, 357.0, 243.0, 93.0, 126.489814519882202, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 1013.819999999999936, 357.0, 243.0, 357.0, 243.0, 57.0, 126.489814519882202, 57.0 ],
					"order" : 1,
					"source" : [ "obj-5", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 999.700000000000045, 357.0, 243.0, 357.0, 243.0, 18.0, 126.489814519882202, 18.0 ],
					"order" : 1,
					"source" : [ "obj-5", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 1112.659999999999854, 357.0, 102.0, 357.0, 102.0, 294.0, 126.489814519882202, 294.0 ],
					"order" : 1,
					"source" : [ "obj-5", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 1126.779999999999973, 357.0, 243.0, 357.0, 243.0, 18.0, 64.29469108581543, 18.0 ],
					"order" : 1,
					"source" : [ "obj-5", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 1098.539999999999964, 357.0, 102.0, 357.0, 102.0, 258.0, 126.489814519882202, 258.0 ],
					"order" : 1,
					"source" : [ "obj-5", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 1084.420000000000073, 357.0, 102.0, 357.0, 102.0, 225.0, 126.489814519882202, 225.0 ],
					"order" : 1,
					"source" : [ "obj-5", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"midpoints" : [ 985.579999999999927, 357.0, 243.0, 357.0, 243.0, 297.0, 194.782499074935913, 297.0 ],
					"order" : 1,
					"source" : [ "obj-5", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 1140.900000000000091, 357.0, 39.0, 357.0, 39.0, 57.0, 64.29469108581543, 57.0 ],
					"order" : 1,
					"source" : [ "obj-5", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 971.460000000000036, 357.0, 243.0, 357.0, 243.0, 261.0, 194.782499074935913, 261.0 ],
					"order" : 1,
					"source" : [ "obj-5", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 957.339999999999918, 357.0, 243.0, 357.0, 243.0, 225.0, 194.782499074935913, 225.0 ],
					"order" : 1,
					"source" : [ "obj-5", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 858.5, 357.0, 315.0, 357.0, 315.0, 297.0, 267.953232526779175, 297.0 ],
					"order" : 1,
					"source" : [ "obj-5", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"midpoints" : [ 1155.019999999999982, 357.0, 39.0, 357.0, 39.0, 93.0, 64.29469108581543, 93.0 ],
					"order" : 1,
					"source" : [ "obj-5", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 844.379999999999995, 357.0, 315.0, 357.0, 315.0, 258.0, 267.953232526779175, 258.0 ],
					"order" : 1,
					"source" : [ "obj-5", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 830.259999999999991, 357.0, 315.0, 357.0, 315.0, 225.0, 267.953232526779175, 225.0 ],
					"order" : 1,
					"source" : [ "obj-5", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 745.539999999999964, 357.0, 321.0, 357.0, 321.0, 294.0, 343.562990427017212, 294.0 ],
					"order" : 1,
					"source" : [ "obj-5", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 679.712761163711548, 888.0, 719.07446300983429, 888.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 323.5, 753.0, 323.5, 753.0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 323.5, 762.0, 636.0, 762.0, 636.0, 726.0, 659.499995350837708, 726.0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 659.499995350837708, 780.0, 679.712761163711548, 780.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 597.797868132591248, 978.0, 465.0, 978.0, 465.0, 882.0, 329.5, 882.0 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 597.797868132591248, 969.0, 696.0, 969.0, 696.0, 897.0, 719.07446300983429, 897.0 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 505.5, 420.0, 505.5, 420.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 548.861698269844055, 969.0, 465.0, 969.0, 465.0, 882.0, 329.5, 882.0 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 548.861698269844055, 978.0, 696.0, 978.0, 696.0, 897.0, 719.07446300983429, 897.0 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1430.231741189956665, 273.0, 1435.47401237487793, 273.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"midpoints" : [ 1435.47401237487793, 324.0, 1611.166628479957581, 324.0 ],
					"order" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 1435.47401237487793, 351.0, 1257.0, 351.0, 1257.0, 786.0, 1238.730886459350586, 786.0 ],
					"order" : 3,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 1435.47401237487793, 351.0, 1293.0, 351.0, 1293.0, 447.0, 1328.660701304674149, 447.0 ],
					"order" : 2,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"midpoints" : [ 1435.47401237487793, 351.0, 1405.660701304674149, 351.0 ],
					"order" : 1,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 1232.57703971862793, 906.0, 1161.807802200317383, 906.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 1231.038578033447266, 1095.0, 1160.269340515136719, 1095.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"midpoints" : [ 1710.256477355957031, 1419.0, 1730.506477355957031, 1419.0 ],
					"order" : 1,
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 1703.006477355957031, 1428.0, 1704.506477355957031, 1428.0 ],
					"order" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 1 ],
					"midpoints" : [ 1710.256477355957031, 1419.0, 1851.0, 1419.0, 1851.0, 1545.0, 1926.166555404663086, 1545.0 ],
					"order" : 0,
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"midpoints" : [ 1703.006477355957031, 1419.0, 1851.0, 1419.0, 1851.0, 1545.0, 1876.166555404663086, 1545.0 ],
					"order" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 505.5, 510.0, 504.5, 510.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 1501.148485145568884, 750.0, 2259.0, 750.0, 2259.0, 366.0, 2487.465986490249634, 366.0 ],
					"source" : [ "obj-75", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"midpoints" : [ 1981.228485145568811, 750.0, 2271.0, 750.0, 2271.0, 696.0, 2296.279665350914001, 696.0 ],
					"source" : [ "obj-75", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"midpoints" : [ 1472.908485145568875, 1196.016383171081543, 2317.5, 1196.016383171081543 ],
					"source" : [ "obj-75", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"midpoints" : [ 1938.868485145568684, 849.0, 1526.67108366224511, 849.0 ],
					"source" : [ "obj-75", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 7 ],
					"midpoints" : [ 1854.148485145568884, 849.0, 1602.004416995578367, 849.0 ],
					"source" : [ "obj-75", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 9 ],
					"midpoints" : [ 1825.908485145568875, 849.0, 1627.115528106689453, 849.0 ],
					"source" : [ "obj-75", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 8 ],
					"midpoints" : [ 1811.788485145568757, 849.0, 1614.559972551133797, 849.0 ],
					"source" : [ "obj-75", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 5 ],
					"midpoints" : [ 1783.548485145568975, 849.0, 1576.893305884467281, 849.0 ],
					"source" : [ "obj-75", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 6 ],
					"midpoints" : [ 1769.428485145568857, 849.0, 1589.448861440022711, 849.0 ],
					"source" : [ "obj-75", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 3 ],
					"midpoints" : [ 1727.068485145568957, 849.0, 1551.782194773356196, 849.0 ],
					"source" : [ "obj-75", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 5 ],
					"midpoints" : [ 1712.948485145568839, 849.0, 1576.893305884467281, 849.0 ],
					"source" : [ "obj-75", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 9 ],
					"midpoints" : [ 1670.588485145568939, 849.0, 1627.115528106689453, 849.0 ],
					"source" : [ "obj-75", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 4 ],
					"midpoints" : [ 1656.46848514556882, 849.0, 1564.337750328911625, 849.0 ],
					"source" : [ "obj-75", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 7 ],
					"midpoints" : [ 1642.348485145568702, 849.0, 1602.004416995578367, 849.0 ],
					"source" : [ "obj-75", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 2 ],
					"midpoints" : [ 1628.228485145568811, 849.0, 1539.226639217800539, 849.0 ],
					"source" : [ "obj-75", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 8 ],
					"midpoints" : [ 1614.10848514556892, 741.0, 1614.559972551133797, 741.0 ],
					"source" : [ "obj-75", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 4 ],
					"midpoints" : [ 1571.748485145568793, 849.0, 1564.337750328911625, 849.0 ],
					"source" : [ "obj-75", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 3 ],
					"midpoints" : [ 1543.508485145568784, 849.0, 1551.782194773356196, 849.0 ],
					"source" : [ "obj-75", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"midpoints" : [ 1515.268485145568775, 849.0, 1526.67108366224511, 849.0 ],
					"source" : [ "obj-75", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 2 ],
					"midpoints" : [ 1487.028485145568766, 849.0, 1539.226639217800539, 849.0 ],
					"source" : [ "obj-75", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"midpoints" : [ 1458.788485145568757, 849.0, 1526.67108366224511, 849.0 ],
					"source" : [ "obj-75", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1444.668485145568866, 849.0, 1514.115528106689453, 849.0 ],
					"source" : [ "obj-75", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 504.5, 591.0, 1275.0, 591.0, 1275.0, 180.0, 1430.231741189956665, 180.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 199.5, 948.0, 306.0, 948.0, 306.0, 894.0, 329.5, 894.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 1627.115528106689453, 1212.0, 1732.006477355957031, 1212.0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 1514.115528106689453, 1212.0, 1703.006477355957031, 1212.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 358.5, 966.0, 358.5, 966.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 413.5, 981.0, 315.5, 981.0 ],
					"source" : [ "obj-95", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 242.5, 915.0, 306.0, 915.0, 306.0, 894.0, 329.5, 894.0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 267.5, 882.0, 279.0, 882.0, 279.0, 894.0, 329.5, 894.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-67" : [ "live.gain~", "Gain", 0 ],
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "fluid.buf2list.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "fluid.list2buf.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "fluid.loudness~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
