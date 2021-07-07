{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 56.0, 613.0, 523.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 76.0, 344.0, 20.0 ],
					"text" : "See the imu-ble.ino sketch for what is happening in the Arduino"
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
					"patching_rect" : [ 135.0, 474.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 74.5, 474.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 15.0, 474.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 64.0, 426.0, 67.0, 22.0 ],
					"text" : "unpack f f f"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 50.0, 303.0, 20.0 ],
					"presentation_linecount" : 3,
					"text" : "Get Accelerometer data over bluetoooth low energy"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 1.0, 387.0, 47.0 ],
					"presentation_linecount" : 4,
					"text" : "Arduinon IMU over BLE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 266.5, 150.0, 22.0 ],
					"text" : "connect name ArduinoIMU"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 419.0, 196.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 419.0, 234.5, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 28.0, 363.0, 55.0, 22.0 ],
					"text" : "zl.slice 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 64.0, 390.0, 71.0, 22.0 ],
					"text" : "byte-cast f<"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 85.0, 146.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 85.0, 177.0, 70.0, 22.0 ],
					"text" : "filter rssi $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 237.0, 196.0, 96.0, 22.0 ],
					"text" : "prepend append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "clear" ],
					"patching_rect" : [ 170.0, 177.0, 51.0, 22.0 ],
					"text" : "t s clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"items" : [ "4703F7B0-0BE5-418B-B913-FEDE3418EF24", -9, ",", "5EE6EA6B-906F-483F-9232-E091E5156121", 34, ",", "C13FF695-5412-450F-9405-907AD46D03AA", -59, ",", "4A3C5C33-79CB-4A46-93BF-67B2BD228E6A", -64, ",", "763A142B-EDA3-452D-8DFA-67DF0F59F3E0", -61, ",", "E938723E-C8A1-414C-8E9B-85CEC6999393", -56, ",", "ACD0E659-0A60-486C-B6B0-2C2F1C0E22DE", -66, ",", "804D3F65-2D33-4AA1-B0FB-7BFADE55ACD7", 53, ",", "EC583D9E-0754-4515-B14F-810CF0BC2B11", -66, ",", "815B929E-427E-4641-82B8-62D2D1376EA8", 53, ",", "4E76983E-BC52-4DEB-A5D8-51C548C59CC3", -49, ",", "D489FE9E-5221-4F52-8F3A-F0308550BEC7", 27, ",", "542D6611-D894-404C-AC4B-9BB5896D4E49", -46, ",", "940F541C-2E00-40A0-B9D8-B8EBC7F303EF", -50, ",", "8A419FA6-D66D-4965-97DE-8886F02B2448", -61, ",", "5B3FC3CC-13FE-42E6-AD49-CD514A866651", -48, ",", "E6CF9EDF-6638-4AC5-8975-3D184909BC6F", -61, ",", "5C8A69B6-53ED-4B08-B157-CA8528FEA21D", -66, ",", "45575F11-83E2-4465-87CB-EA0BF651DE50", 51, ",", "DB997399-828B-46BF-833E-A74DA51ECC18", 53, ",", "F25640C3-27E7-4113-9149-FCD37DCE93AF", 27, ",", "E89BAEAC-B0BA-4C32-906A-27413E6D3E48", -62, ",", "58E00AD1-D115-4F53-BAFA-173E993EBE87", 52, ",", "43FC9824-6E09-493C-AF16-B6E13FCBDD42", -59, ",", "918AAE9B-459A-4480-B7DD-557E808ADBF3", -58, ",", "6819A4CB-2F40-44BF-9BA8-3DA32A9E0C0B", -66, ",", "00B1E351-E57F-4C52-B2B3-328F7E11A4A8", -48, ",", "299AE98A-5C75-4B3E-A1BF-94363EADFFA8", 53, ",", "86D051F1-DF0E-4188-8EFA-CF004FBA96B1", 52, ",", "6ED8E52E-3605-48BF-A816-138B91F9E120", 53, ",", "B3603FC3-A538-4D44-A742-8F38EB305B2D", -57, ",", "D6DEDF05-83F1-47FC-900C-3B94C0E71920", -47, ",", "2DE7838F-9216-46DF-92ED-9DA68C0CC381", 53, ",", "51CB93CA-206F-4108-84B5-219D16248C4F", -49, ",", "CCCD4381-BCEE-45DA-B5CA-C7DAEB58BDCB", -57, ",", "B4BD1596-A70E-448A-AA12-DCC1F7E15CB6", -55, ",", "5EE6EA6B-906F-483F-9232-E091E5156121", -93, ",", "763A142B-EDA3-452D-8DFA-67DF0F59F3E0", -65, ",", "C13FF695-5412-450F-9405-907AD46D03AA", -53, ",", "ACD0E659-0A60-486C-B6B0-2C2F1C0E22DE", -64, ",", "4E76983E-BC52-4DEB-A5D8-51C548C59CC3", -93, ",", "FE24FE6D-167A-4972-86A5-BD8F48CDAA4F", -97, ",", "2A4FBA72-D9D0-45C5-9060-882B1105A58A", -95, ",", "07023531-D516-48AF-84F8-C026868DD2B8", -98, ",", "D8B7551D-05E2-4767-9EDE-1746CC97D088", -95, ",", "E938723E-C8A1-414C-8E9B-85CEC6999393", -94, ",", "86F2E6E7-85F1-4B2A-AF7C-0F75EEE3C37B", -102, ",", "D5EAF5F0-CC79-4046-9BF4-20C9B465EDBD", -100, ",", "37D2BE4B-5250-4B3C-97CE-E29254C7AEA2", -101, ",", "10DDA47F-A678-4969-B260-0CE7BD8DB8E9", -100, ",", "9D3A6582-7F82-422E-ACC1-36A8BA3E8C64", 99, ",", "D489FE9E-5221-4F52-8F3A-F0308550BEC7", -99, ",", "542D6611-D894-404C-AC4B-9BB5896D4E49", -99, ",", "DFAE3238-632B-4767-B7A5-A1B8D8F766A1", -98, ",", "4A3C5C33-79CB-4A46-93BF-67B2BD228E6A", -42, ",", "14E62CFD-380B-4EF4-AC4D-9D2F2E332A0C", -98, ",", "59F0341F-9A18-496A-8103-B8E08942436F", -92, ",", "7F781156-7162-41F2-AAEB-375D7DA3DC9C", -95, ",", "6A49DBB2-0C80-4D5D-B2AB-6E2A310B8635", -89, ",", "EF8F981C-78EB-4BF1-B697-7DC4400C3264", -95, ",", "51774FE4-82B0-4489-A636-2B7985447A28", -98, ",", "66E59F8E-91DB-4F87-A26E-0B242A624C0B", -102, ",", "91D1CF96-1181-493B-95DD-66C806B998C2", -97, ",", "DCC11B85-1D39-46B9-956D-D4F93405FC68", 99, ",", "7B1B632F-C7E5-46EF-B28F-19AD54E3A5A7", -98, ",", "82B91B51-6559-43E9-8402-75D76F0B2ABB", -99, ",", "F4496D51-45EC-48DB-B5DC-77D5D66AFCBB", -100, ",", "CE3810B8-22FE-4F39-BAD6-C155E2798974", -95, ",", "19D2DF2F-3D86-40DC-84F9-F11802603C80", -100, ",", "1ACF981F-E3CD-4F36-8736-02E162CC7DA5", -99, ",", "F18EB818-4684-44F8-8670-AE2DCC97052D", -99, ",", "23EC9F02-2EBA-4B88-95AE-82EA68D424B2", 99, ",", "306DF513-3279-4DB7-90C3-9B4531E878DA", -99, ",", "63509CCD-B612-4438-B46F-EABFB2C68DA8", -98, ",", "58F225D7-0577-47C7-84DA-A959DD4A5199", -97, ",", "C0C601D8-3FFE-4FCA-A181-C694138CE499", -97, ",", "72CC0D76-0136-437F-85FD-6C2B555F0286", -101, ",", "8A419FA6-D66D-4965-97DE-8886F02B2448", -98, ",", "8CD9489B-B625-4305-B59D-3056AEC5DADF", -99, ",", "F231C186-7737-46CF-95B7-93E6C8A6F484", -97, ",", "2FF158A9-C1C5-4111-9CE9-2DA68BF06A73", -100, ",", "567E622E-6383-4214-BC80-F3CC416DC2F4", -93, ",", "D28880FF-392C-43B4-A455-6BE5E671479F", -97, ",", "42CA1E76-706C-485D-9799-692C11216B25", -99, ",", "7512B90C-3A75-4A78-9F06-9142B945AD21", -93, ",", "B819D1A1-8803-45E4-9CDA-6B37133445FE", -82, ",", "82952F99-C435-4F8A-A726-51C3562B642D", -97, ",", "EDD9CCF0-003A-489B-A180-1C9A02BA84E0", -97, ",", "A7095F5F-1721-4E50-8676-ED528FC7AB27", -100, ",", "7DEA3794-8E6B-4962-A7FC-4745504EE9C4", -99, ",", "E62097AF-AD87-4A7E-960C-832796F3E5BD", -101, ",", "EB9D2E06-422C-41C9-8E49-C80851C43D2D", -98, ",", "E05D5BDC-9667-4F63-B7D0-4DDD44556E1C", 27, ",", "98BDB61B-7060-4BDA-97A1-F0E008765F1D", -96, ",", "A23A31E4-6AA0-4A6E-B43D-0B76BC6D4DC9", -95, ",", "0DB1B477-F501-4669-BF8B-192E9580C16A", 27, ",", "E2F6AC2F-D7ED-45F5-93E2-D653AFA5182B", -100, ",", "01AC297A-2483-416B-A39E-86A58395CFDA", -92, ",", "7655ECF8-0815-44CF-83C5-65C175B2520A", -89, ",", "5B2B641A-9382-4C65-BE5B-C6ACB596DD5C", 115, ",", "9DF2112F-7D8E-49EB-9E21-E069A60ACEB4", -97, ",", "6D16921A-1E25-49F1-BE40-4DECEB90ADF7", -100, ",", "01AE0266-8235-49CC-A9D5-901B6FC5FE32", -93, ",", "E6CF9EDF-6638-4AC5-8975-3D184909BC6F", -99, ",", "D8CA45C5-9BBA-4A63-BC42-0A73F6E4A72C", -102, ",", "0A911D76-84E8-479B-B9EE-06C445603F4C", 27, ",", "3690E808-BE72-4D3B-B752-DB8ECACE7E25", -97, ",", "A243FB2D-1825-440C-B340-98A844EF0E85", -96, ",", "9C00055F-0EF3-4CA2-B651-3B161579D106", -94, ",", "67A5858F-8D5D-45BE-8CF3-E2317C8DA96C", -97, ",", "A21741E0-C92E-4B25-837B-AEFDDBC8D510", -99, ",", "5C6453FE-C116-4ECE-B256-5B968D34E21C", -100, ",", "5C8A69B6-53ED-4B08-B157-CA8528FEA21D", -102, ",", "F9815CC1-0851-4936-A85D-C1445E901B2C", -97, ",", "0F6D0B78-BA1A-4D82-8359-22FA0FBA7CB1", -94, ",", "82C991D0-B143-4604-84D7-B6B9FED64694", -100, ",", "99F63533-788B-4984-93D3-06F6BDC1B4D0", -95, ",", "3A8FEBB2-2F34-40BD-A51E-95CE5CE69368", -86, ",", "EA1F7CCA-BCDE-4C59-AE18-5EFE7937E0A1", -98, ",", "172BFB7A-2198-4EA6-9048-B6F779D2E53B", -100, ",", "9725D57E-1E24-4687-9318-1E75E5E42FD6", -103, ",", "BCC393CD-411D-4211-A785-6847C44AEC69", -99, ",", "7C4C7753-4EE0-455B-9DF2-7F988DD1CA2F", -96, ",", "01BAFEAB-3C07-491D-9CFF-D5764264C6B7", -98, ",", "B8B9EF6A-8722-4AD0-9862-744FDFCE3D99", 27, ",", "27E62FC7-28CE-4BE4-B698-33B0D0BA62C8", -94, ",", "6244731D-7A98-4185-829C-AE462B042769", -100, ",", "92E59F0A-EF93-47A7-9EC9-AB8D46F2A268", -104, ",", "494BDF9F-F30D-4E77-8854-83E624E21F7F", -102, ",", "6761DA75-F234-439F-9D7E-14F1B6262018", -96, ",", "792EA38C-9B1A-4579-B2F7-3E7F16B352F7", 99, ",", "C182EE22-66C2-474D-A7A5-1B774F88119A", -100, ",", "082A49DC-310F-4183-B404-C20BDEC0ACD7", 99, ",", "BE70477A-99DD-45DB-8595-449E3C695C02", -97, ",", "A987BC62-1244-4CCE-808D-50A263967587", -103, ",", "9F78D37A-51A4-47BE-B6E5-616CC2B11C6F", -98, ",", "7AD1944E-F615-4DED-BD37-1EC14BDDB57F", -99, ",", "362EAF20-F907-499D-A8D5-7F6DA6EB90F4", -94, ",", "900BCF5F-67AE-4355-9A30-279871963FEF", -99, ",", "3A35C403-CE86-4721-A518-3A4CBFE82D3D", -97, ",", "6A36872C-43D4-4A9A-AC78-7E1A074CD803", -94, ",", "30C4BA29-7711-4403-8A61-41B8DEA89D53", 27, ",", "5F0EAD59-DB6C-488A-BF4D-C3AB1512F96D", -96, ",", "5244411B-A296-4901-B7A0-EAC1A28879DA", -100, ",", "77BF5317-7DB2-481F-A8C6-213BE9251445", -104, ",", "0A54F595-FEF3-4602-8494-94337E488AC1", -95, ",", "7A52166C-1AAB-48D2-B01C-FE8DE3A4B68B", -101, ",", "63F75B53-3D03-492D-9949-11AABEE909B4", -98, ",", "21FC322D-9C7A-4E1E-8186-F097F4725A8F", -98, ",", "0382ACC4-6B7E-4AA2-B7C8-C3CA1C5A0195", -101, ",", "374B3BCB-C14B-4F92-921F-D60E6374F3F5", -103, ",", "FBE299F9-A5D8-42ED-9B47-CBA60BFE981E", -99, ",", "09F1737A-BD53-4899-AAE2-371BD1E49647", 27, ",", "8E27CFE3-5CD8-4535-92C5-515663DF03CC", 99, ",", "8C578721-9D32-4EE7-8FD3-C5939994A664", -101, ",", "A230797D-E00F-41BE-9735-29E047383F11", -96, ",", "F77361C0-F754-4B14-96E6-74E709DA7A1E", -97, ",", "AF36C9F9-CDA3-46BD-BB5F-F77CD1BB6A65", -104, ",", "6C33D485-F2AC-4025-9882-296274E3BD3F", 27, ",", "EA44A078-A0A6-4B6D-AE94-46B5C82E0A05", -102, ",", "41FAEA42-F8C1-463C-A40A-6B3C5C1AD83A", -99, ",", "9B87DCED-9EDB-4797-8D22-0202023E571F", 27 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.0, 234.5, 185.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 271.5, 67.0, 22.0 ],
					"text" : "connect $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.0, 146.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 137.0, 39.0, 22.0 ],
					"text" : "found"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 146.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 203.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 234.5, 57.0, 22.0 ],
					"text" : "report $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 177.0, 51.0, 22.0 ],
					"text" : "scan $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "list", "list", "list" ],
					"patching_rect" : [ 28.0, 322.0, 71.5, 22.0 ],
					"text" : "max-ble"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 94.5, 309.0, 37.5, 309.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "max-ble.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "byte-cast.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
