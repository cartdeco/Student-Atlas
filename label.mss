/* ---- STUDENT ATLAS MULTIPUBLISHED LABELS ---- */

/* ---- 

  Label positions have been created for the various layers in a number
  of ways. Firstly, line features use Mapnik's in-built label position 
  algorithms to best place the label. In some cases, this requires the
  label to be placed on the line, which in turn requires a halo to be
  created to make the text legible.

  Secondly, label positions are created from the print artwork as a series
  of points, particularly for large area features, bays, gulfs, etc. A
  justify field is included to indicate in which direction the label should be
  placed from the point.

  Finally, large linear features, such as mountain ranges, deserts, plains,
  etc, which would traditionally have their label placed along the feature, are
  stored in line data - prefereably a smooth bezier curve converted to a series
  of straight-line nodes. If the label can't fit on the line it won't be displayed, as the
  line should cover the extent of the feature. Appropriate character spacing 
  can be applied in Carto CSS.

  Label sizes have had a 'design operator' applied to them to convert to a 
  legible size on screen. The conversion factor is 1.75 times the print size
  of the label.

/* ----

/*
   created by Craig Molyneux for Masters of Land Information research project
   2013.
*/

/* ---- font directory ---- */

Map {
  font-directory: url(usr/macmini/Library/Fonts);
}

/* ===============================================
                    ZOOM 0 to 2
   ===============================================  */

/* Zoom 0 scale = 1:591 657 550
   Zoom 1 scale = 1:295 828 775
   Zoom 2 scale = 1:147 914 387
   ----

/* ---- oceans ---- */

/* ---- zoom 2 ---- */

#ne50moceanslabelscm [zoom=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:fadeout(@hydro_text,30%);
  text-character-spacing:2;
  text-dy:0;
  text-avoid-edges:true;
  text-wrap-width:70;
  text-line-spacing:10;
  }

#ne50moceanslabelscm [zoom=2][name='ARCTIC OCEAN']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:fadeout(@hydro_text,30%);
  text-character-spacing:2;
  text-dy:50;
  text-dx:10;
  text-avoid-edges:false;
  text-line-spacing:10;
  }

/* Un-comment geographic line labels to display. Note that lines should also
   be displayed in MultipublishedStyles sheet.*/

/* ---- geographic lines ---- */

#ne10mgeographiclines [zoom=2][featurecla='Circle of latitude']{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:10.5;
  text-character-spacing:1;
  text-dy:-6;
  text-dx:0;
  text-placement:line;
  text-min-padding:0;
  text-clip:false;
  }

/* —— continents ---- */
  
#cmcontinentslabels [zoom=2]{
  text-name:[NAME];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:lighten(black,15%);
  text-character-spacing:2;
  text-avoid-edges:false;
  text-line-spacing:3;
  text-wrap-width:8;
  }

/* ===============================================
                    ZOOM 3 to 4
   ===============================================  */

/* Zoom 3 scale = 1:73 957 193
   Zoom 4 scale = 1:36 978 669
*/

/* Un-comment geographic line labels to display. Note that lines should also
   be displayed in MultipublishedStyles sheet.*/

/* ---- geographic lines ---- */

#ne10mgeographiclines [zoom>=3][zoom<=4][featurecla='Circle of latitude']{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:10.5;
  text-character-spacing:1;
  text-dy:-6;
  text-placement:line;
  text-min-padding:0;
  }


/* ---- capital cities ---- */

#jac10mpopulatedplace [zoom=4][scalerank<=4][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-allow-overlap:false;
  text-min-padding:0;
  text-avoid-edges:false;
  text-clip:false;
  }
 
#jac10mpopulatedplace [zoom=4][scalerank<=4][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:30;
  text-allow-overlap:false;
  text-min-padding:0;
  text-avoid-edges:false;
  text-clip:false;
  }

#jac10mpopulatedplace [zoom=4][scalerank<=4][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:30;
  text-allow-overlap:false;
  text-min-padding:0;
  text-avoid-edges:false;
  text-clip:false;
  }
 
#aus10lgdp [zoom>=4][NAME='CANBERRA']{
  text-name:[CM_ANNO];
  text-face-name:'Myriad Pro Regular';
  text-size:7*@text;
  text-character-spacing:1;
  text-dx:6;
  text-dy:0;
  text-wrap-width:20;
  text-allow-overlap:true;
  text-min-padding:2;
  text-avoid-edges:false;
  }

/* ---- countries ---- */

/* ---- zoom 3 ---- */

#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Sovereign country']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:1;
  text-label-position-tolerance:30;
  }

#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Country']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:1;
  text-label-position-tolerance:30;
  }

#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Lease']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:1;
  text-label-position-tolerance:30;
  }

#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Disputed']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:2;
  text-label-position-tolerance:30;
  }

#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Indeterminate']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:2;
  text-label-position-tolerance:30;
  }
 
#jaccountrylabelspoin [zoom=3][scalerank<=3][type='Dependency']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:2;
  text-label-position-tolerance:30;
  }

/* ---- zoom 4 ---- */

/* Justify Center */

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Sovereign country'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Country'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Lease'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Disputed'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Indeterminate'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Dependency'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

/* Justify Left */

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Sovereign country'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-clip:false;
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Country'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Lease'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Disputed'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Indeterminate'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Dependency'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

/* Justify Right */

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Sovereign country'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Country'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Lease'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Disputed'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Indeterminate'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=4][scalerank<=4][type='Dependency'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jacpacificgroupingsl [zoom>=4][zoom<=5][type='Sovereign country']{
  text-name:[Pacific_gr];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:60;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  }
 
#jacpacificgroupingsl [zoom>=4][zoom<=5][type='Dependency']{
  text-name:[Pacific_gr];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  }

/* ---- geographic lines ---- */

#ne10mgeographiclines [zoom>=5][featurecla='Circle of latitude']{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:10.5;
  text-character-spacing:1;
  text-dy:-6;
  text-dx:-4;
  text-placement:line;
  text-min-padding:0;
  text-spacing:500;
  text-max-char-angle-delta:20;
  }

#ne10mgeographiclines [zoom>=5][featurecla='Date line']{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:10.5;
  text-character-spacing:1;
  text-dy:-6;
  text-placement:line;
  text-min-padding:0;
  }

/* ---- geo marine areas ---- */

/* ---- zoom 3 & 4 ---- */

#ne50moceanslabelscm [zoom>=3][zoom<=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:fadeout(@hydro_text,30%);
  text-character-spacing:2;
  text-dy:0;
  text-avoid-edges:false;
  text-line-spacing:10;
  }

#ne50moceanslabelscm [zoom>=3][zoom<=4][name='ARCTIC OCEAN']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:fadeout(@hydro_text,30%);
  text-character-spacing:2;
  text-dy:50;
  text-dx:10;
  text-avoid-edges:false;
  text-line-spacing:10;
  }

#ne50mgeographymarine [zoom=4][featurecla='sea'][scalerank=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-orientation:[ROTATION];
  text-dy:0;
  text-wrap-width:60;
  text-line-spacing:2;
  }

#ne50mgeographymarine [zoom=4][featurecla='sea'][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-orientation:[ROTATION];
  text-dy:0;
  text-wrap-width:30;
  text-line-spacing:2;
  }

#ne50mgeographymarine [zoom=4][featurecla='bay'][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-orientation:[ROTATION];
  text-dy:0;
  text-wrap-width:30;
  text-line-spacing:2;
  }

#ne50mgeographymarine [zoom=4][featurecla='gulf'][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-orientation:[ROTATION];
  text-dy:0;
  text-wrap-width:30;
  text-line-spacing:2;
  }

/* ===============================================
                    ZOOM 5 - 7
   ===============================================  */

/* Zoom 5 scale = 1:18 489 298
   Zoom 6 scale = 1:9 244 649
   Zoom 7 scale = 1:4 622 333
*/

/* —— admin 0 —— */

/* ---- zoom 5 ---- */

/* Justify Center */

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Sovereign country'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Country'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Lease'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Disputed'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Indeterminate'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Dependency'][display=1][CM_Justify='Center']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:50;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-dx:1;
  text-horizontal-alignment:middle;
  text-align:center;
  text-placement-type:simple;
  }

/* Justify Left */

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Sovereign country'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-clip:false;
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Country'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Lease'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Disputed'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Indeterminate'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Dependency'][display=1][CM_Justify='Left']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"E,NE,SE";
  text-dx:1;
  text-horizontal-alignment:right;
  text-align:left;
  }

/* Justify Right */

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Sovereign country'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-wrap-width:1;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-avoid-edges:false;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Country'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-transform:uppercase;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Lease'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Disputed'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Indeterminate'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }
 
#jaccountrylabelspoin [zoom=5][scalerank<=5][type='Dependency'][display=1][CM_Justify='Right']{
  text-name:[CM_Name];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:16;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  text-placement-type:simple;
  text-placements:"W,NW,SW";
  text-dx:1;
  text-horizontal-alignment:left;
  text-align:right;
  }

#jacpacificgroupingsl [zoom>=4][zoom<=5][type='Sovereign country']{
  text-name:[Pacific_gr];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:60;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  }
 
#jacpacificgroupingsl [zoom>=4][zoom<=5][type='Dependency']{
  text-name:[Pacific_gr];
  text-face-name:'ITC Legacy Sans Std Book';
  text-size:14;
  text-character-spacing:1;
  text-wrap-width:30;
  text-placement:point;
  text-halo-radius:1;
  text-halo-fill:@white;
  text-min-padding:0;
  }

/* —— admin 1 —— */

#ne10madmin1statespro2 [zoom=6][scalerank<=2]{
  text-name:[name];
  text-face-name:'ITC Legacy Sans Std Bold';
  text-size:12;
  text-fill:lighten(@admin1_text,30%);
  text-character-spacing:1;
  text-wrap-width:30;
  text-halo-radius:1;
  text-halo-fill:fadeout(@white,40%);
  text-min-padding:2;
  text-placement:interior;
  text-label-position-tolerance:30;
  text-avoid-edges:false;
  }
  
/* ----geo marine areas ---- */

/* ---- zoom 5 ---- */

#jacmarinepolycombine [zoom=5][featurecla='ocean']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:21;
  text-fill:@hydro_text;
  text-character-spacing:20;
  text-dy:0;
  text-wrap-width:100;
  text-line-spacing:10;
  text-placement:interior;
  }

#jacmarinepolycombine [zoom=5][scalerank<=4][featurecla='sea'][CM_Display=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:60;
  text-line-spacing:10;
  text-placement:interior;
  }
 
#jacmarinelinecombine [zoom=5][featurecla='sea'][scalerank<=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinelinecombine [zoom=5][featurecla='gulf'][scalerank<=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinepolycombine [zoom=5][scalerank<=4][featurecla='gulf']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:3;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:6;
  text-placement:interior;
  }

#jacmarinelinecombine [zoom=5][featurecla='strait'][scalerank<=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinepolycombine [zoom=5][scalerank<=4][featurecla='bay'][CM_Display=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:10;
  text-placement:interior;
  }
 
#jacmarinepointcombin [zoom=5][scalerank<=5][justify='R'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-placement:point;
  text-align:right;
  text-horizontal-alignment:left;
  }

#jacmarinepointcombin [zoom=5][scalerank<=5][justify='L'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-align:left;
  text-horizontal-alignment:right;
  text-placement:point;
  }

#jacmarinepointcombin [zoom=5][scalerank<=5][justify='C'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-align:center;
  text-horizontal-alignment:middle;
  text-placement:point;
  }

#jacmarinelinecombine [zoom=5][featurecla='sound'][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinepolycombine [zoom=5][scalerank<=5][featurecla='sound']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1.5;
  text-placement:interior;
  }

/* —— ranges —— */

#jacranges [zoom=5][scalerank=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:lighten(black,20%);
  text-character-spacing:8;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1.5;
  text-placement:line;
  text-clip:false;
  text-label-position-tolerance:10;
  text-spacing:500;
  }

#jacranges [zoom=5][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:lighten(black,20%);
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:20;
  text-line-spacing:1.5;
  text-placement:line;
  text-clip:false;
  text-label-position-tolerance:10;
  text-spacing:500;
  }

#jacranges [zoom=5][scalerank=3]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:lighten(black,20%);
  text-character-spacing:2;
  text-dy:0;
  text-wrap-width:10;
  text-line-spacing:1.5;
  text-placement:line;
  text-clip:false;
  text-label-position-tolerance:10;
  text-spacing:500;
  }

#jacranges [zoom=5][scalerank=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:line;
  text-clip:false;
  text-label-position-tolerance:10;
  text-spacing:500;
  }

#jacrangespoly [zoom=5][scalerank=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:20;
  text-fill:lighten(black,20%);
  text-character-spacing:10;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=5][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:16;
  text-fill:lighten(black,20%);
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:20;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=5][scalerank=3]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:lighten(black,20%);
  text-character-spacing:2;
  text-dy:0;
  text-wrap-width:10;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=5][scalerank=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:interior;
  }

/* ---- zoom 6 ---- */

#jacmarinepolycombine [zoom=6][featurecla='ocean']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:24;
  text-fill:@hydro_text;
  text-character-spacing:20;
  text-dy:0;
  text-wrap-width:100;
  text-line-spacing:10;
  text-placement:interior;
  }

#jacmarinepolycombine [zoom=6][scalerank<=5][featurecla='sea'][CM_Display=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:18;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:60;
  text-line-spacing:10;
  text-placement:interior;
  }

#jacmarinelinecombine [zoom=6][featurecla='sea'][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:18;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-placement:line;
  text-min-distance:600;
  }
 
#jacmarinelinecombine [zoom=6][featurecla='gulf'][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinepolycombine [zoom=6][scalerank<=5][featurecla='gulf']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:10;
  text-placement:interior;
  }

#jacmarinelinecombine [zoom=6][featurecla='strait'][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarineareacombine [zoom=6][featurecla='strait'][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-line-spacing:2;
  text-placement:interior;
  }

#jacmarinepolycombine [zoom=6][scalerank<=5][featurecla='bay'][CM_Display=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:14;
  text-fill:@hydro_text;
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:10;
  text-placement:interior;
  }
 
#jacmarinepointcombin [zoom=6][scalerank<=6][justify='R'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-placement:point;
  text-align:right;
  text-horizontal-alignment:left;
  }

#jacmarinepointcombin [zoom=6][scalerank<=6][justify='L'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-align:left;
  text-horizontal-alignment:right;
  text-placement:point;
  }

#jacmarinepointcombin [zoom=6][scalerank<=6][justify='C'][featurecla='bay']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1;
  text-align:center;
  text-horizontal-alignment:middle;
  text-placement:point;
  }

#jacmarinelinecombine [zoom=6][featurecla='sound'][scalerank<=6]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-line-spacing:2;
  text-placement:line;
  }

#jacmarinepolycombine [zoom=6][scalerank<=6][featurecla='sound']{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:2;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:2;
  text-placement:interior;
  }

#jacranges [zoom=6][scalerank=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:24;
  text-fill:lighten(black,20%);
  text-character-spacing:10;
  text-spacing:500;
  text-clip:false;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1.5;
  text-placement:line;
  }

#jacranges [zoom=6][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:20;
  text-fill:lighten(black,20%);
  text-character-spacing:5;
  text-spacing:500;
  text-clip:false;
  text-dy:0;
  text-wrap-width:20;
  text-line-spacing:1.5;
  text-placement:line;
  }

#jacranges [zoom=6][scalerank=3]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:16;
  text-fill:lighten(black,20%);
  text-character-spacing:2;
  text-spacing:500;
  text-clip:false;
  text-dy:0;
  text-wrap-width:10;
  text-line-spacing:1.5;
  text-placement:line;
  }

#jacranges [zoom=6][scalerank=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-spacing:500;
  text-clip:false;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:line;
  }

#jacranges [zoom=6][scalerank=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-clip:false;
  text-spacing:500;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:line;
  }

#jacrangespoly [zoom=6][scalerank=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:24;
  text-fill:lighten(black,20%);
  text-character-spacing:10;
  text-dy:0;
  text-wrap-width:40;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=6][scalerank=2]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-size:20;
  text-fill:lighten(black,20%);
  text-character-spacing:5;
  text-dy:0;
  text-wrap-width:20;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=6][scalerank=3]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:16;
  text-fill:lighten(black,20%);
  text-character-spacing:2;
  text-dy:0;
  text-wrap-width:10;
  text-line-spacing:1.5;
  text-placement:interior;
  }

#jacrangespoly [zoom=6][scalerank=4]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:14;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:interior;
  }
 
#jacrangespoly [zoom=6][scalerank=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:lighten(black,20%);
  text-character-spacing:1;
  text-dy:0;
  text-wrap-width:5;
  text-line-spacing:1.5;
  text-placement:interior;
  }

/* =================================================== */
/* ---- 10m populated places ---- */
/* =================================================== */

/* ---- zoom 5 --- */



#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max<=100000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:6*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>100000][pop_max<=500000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Semibold';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>500000][pop_max<=1000000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:8*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>1000000][pop_max<=5000000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:9.5*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>5000000][pop_max<=10000000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold SemiExtended';
  text-size:21;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>10000000][CM_DISPLAY=1][CM_JUSTIFY='left']{
  text-name:[name];
  text-face-name:'Myriad Pro Black SemiExtended';
  text-size:24;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max<=100000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:6*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>100000][pop_max<=500000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Semibold';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>500000][pop_max<=1000000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:8*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>1000000][pop_max<=5000000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:9.5*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>5000000][pop_max<=10000000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold SemiExtended';
  text-size:21;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>10000000][CM_DISPLAY=1][CM_JUSTIFY='right']{
  text-name:[name];
  text-face-name:'Myriad Pro Black SemiExtended';
  text-size:24;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max<=100000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:6*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>100000][pop_max<=500000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Semibold';
  text-size:7*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:false;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>500000][pop_max<=1000000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:8*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>1000000][pop_max<=5000000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:9.5*@text;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>5000000][pop_max<=10000000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Bold SemiExtended';
  text-size:21;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }
 
#jac10mpopplaceadmin0cap [zoom=5][scalerank<=5][pop_max>10000000][CM_DISPLAY=1][CM_JUSTIFY='center']{
  text-name:[name];
  text-face-name:'Myriad Pro Black SemiExtended';
  text-size:24;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:0;
  text-dy:8;
  text-placements:"N,S";
  text-wrap-width:40;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  text-clip:false;
  }

/* ---- zoom 6 --- */

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max<=100000]{
  text-name:[name];
  text-face-name:'Myriad Pro Regular';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  text-name:[name];
  text-face-name:'Myriad Pro Semibold';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:15;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  text-name:[name];
  text-face-name:'Myriad Pro Bold';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  text-name:[name];
  text-face-name:'Myriad Pro Bold SemiExtended';
  text-size:21;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>10000000]{
  text-name:[name];
  text-face-name:'Myriad Pro Black SemiExtended';
  text-size:24;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-wrap-width:20;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/*
#ne10mpopulatedplaces [zoom>=4][zoom<=6][scalerank<=3][pop_max<=500000]{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:10;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE,W,NW,SW,N,S";
  text-wrap-width:20;
  }

#ne10mpopulatedplaces [zoom>=4][zoom<=6][scalerank<=3][pop_max>500000][pop_max<=1000000]{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE,W,NW,SW,N,S";
  text-wrap-width:20;
  }

#ne10mpopulatedplaces [zoom>=4][zoom<=6][scalerank<=3][pop_max>1000000][pop_max<=5000000]{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 65 Medium';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"E,NE,SE,W,NW,SW,N,S";
  }

#ne10mpopulatedplaces [zoom>=4][zoom<=6][scalerank<=3][pop_max>10000000]{
  text-name:[name];
  text-face-name:'Helvetica Neue LT Std 75 Bold';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"E,NE,SE,W,NW,SW,N,S";
  }
*/

/* ---- geo land areas ---- */

/* ---- zoom 5 ---- */

/* ---- islands ---- */

#jacgeoareascombined [zoom=5][scalerank>=1][scalerank<=2][featurecla='Island'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Island'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  text-dx:8;
  }

#jacgeolinescombined [zoom=5][scalerank>=1][scalerank<=4][featurecla='Island']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=5][scalerank>=1][scalerank<=2][featurecla='Island']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:point;
  text-fill:lighten(black,20%);
  }
 
/* ---- island groups ---- */

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:30;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:20;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=4][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }
 
#jacgeoareascombined [zoom=5][scalerank=5][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:2;
  text-placement:interior;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=1][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:30;
  text-placement:line;
  text-fill:lighten(black,20%);
  }
 
#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:20;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=4][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=5][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=5][scalerank>=1][scalerank<=4][featurecla='Island group'][justify='C'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:point;
  text-wrap-width:30;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=5][scalerank>=1][scalerank<=4][featurecla='Island group'][justify='L'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:point;
  text-wrap-width:30;
  text-align:left;
  text-horizontal-alignment:right;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=5][scalerank>=1][scalerank<=4][featurecla='Island group'][justify='R'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:1;
  text-placement:point;
  text-wrap-width:30;
  text-align:right;
  text-horizontal-alignment:left;
  text-fill:lighten(black,20%);
  }

/* ---- basins ---- */

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Basin'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:10;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Basin'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:5;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Basin'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:2;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=4][featurecla='Basin'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:1;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

/* ---- deserts ---- */

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:100;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=1][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:80;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }
 
#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:25;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

/* ---- coasts ---- */

#jacgeolinescombined [zoom=5][scalerank<=3][featurecla='Coast']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:line;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank>=4][scalerank<=5][featurecla='Coast']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:2;
  text-placement:line;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

/* ---- delta ---- */

#jacgeolinescombined [zoom=5][scalerank<=5][featurecla='Delta']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-fill:@hydro_text;
  text-size:10.5;
  text-character-spacing:1;
  text-placement:line;
  }

/* ---- plain ---- */

#jacgeolinescombined [zoom=5][scalerank=1][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:100;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-line-spacing:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:25;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:line;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:24;
  text-character-spacing:150;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-line-spacing:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:20;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-line-spacing:15;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:3;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

/* ---- geo area ---- */

#jacgeolinescombined [zoom=5][scalerank=1][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:50;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:50;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

/* ---- peninsula ---- */

#jacgeoareascombined [zoom=5][scalerank<=2][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:25;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank<=2][featurecla='Peninsula']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:15;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank>=3][scalerank<=4][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank>=3][scalerank<=4][featurecla='Peninsula']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom>=5][scalerank<=5][scalerank<=4][justify='C'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom>=5][scalerank<=5][scalerank<=4][justify='L'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:right;
  text-align:left;
  text-fill:lighten(black,20%);
  }
  
#jacgeopointscombined [zoom>=5][scalerank<=5][scalerank<=4][justify='R'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:left;
  text-align:right;
  text-fill:lighten(black,20%);
  }

/* —— plateau —— */

#jacgeoareascombined [zoom=5][scalerank=1][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:15;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:15;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=2][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:15;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:8;
  text-fill:lighten(black,20%);
  }
 
#jacgeoareascombined [zoom=5][scalerank=3][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:5;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=5][scalerank=4][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:2;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:2;
  text-fill:lighten(black,20%);
  }

/* —— tundra —— */

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Tundra']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:15;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Tundra']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:10;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Tundra']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

/* —— valley —— */

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Valley']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:15;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=2][featurecla='Valley']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:10;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Valley']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

/* —— lowland —— */

#jacgeolinescombined [zoom=5][scalerank=3][featurecla='Lowland']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

/* —— foothills —— */

#jacgeolinescombined [zoom=5][scalerank<=3][featurecla='Foothills']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:2;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

/* ---- zoom 6 ---- */

/* ---- islands ---- */

#jacgeoareascombined [zoom=6][scalerank>=1][scalerank<=4][featurecla='Island'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank>=1][scalerank<=5][featurecla='Island']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:line;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=6][scalerank>=1][scalerank<=3][featurecla='Island'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:point;
  text-fill:lighten(black,20%);
  }
 
/* ---- island groups ---- */

#jacgeoareascombined [zoom=6][scalerank>=1][scalerank<=5][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=1][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:22;
  text-character-spacing:30;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=2][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:20;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=3][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:10;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=4][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=5][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:5;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=6][featurecla='Island group']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:5;
  text-placement:line;
  text-align:center;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=6][scalerank>=1][scalerank<=4][featurecla='Island group'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:point;
  text-fill:lighten(black,20%);
  }

/* ---- basins ---- */

#jacgeoareascombined [zoom=6][scalerank>=1][scalerank<=5][display<1][featurecla='Basin'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:1;
  text-placement:interior;
  text-fill:lighten(black,20%);
  }

/* ---- deserts ---- */

#jacgeoareascombined [zoom=6][scalerank=1][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:100;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=1][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:80;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=2][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=2][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 66 Bold Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:25;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=3][featurecla='Desert'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=3][featurecla='Desert']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

/* ---- coasts ---- */

#jacgeolinescombined [zoom=6][scalerank<=3][featurecla='Coast']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:5;
  text-placement:line;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

/* ---- delta ---- */

#jacgeolinescombined [zoom=6][scalerank<=6][featurecla='Delta']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-fill:@hydro_text;
  text-size:12.5;
  text-character-spacing:1;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  }

/* ---- plain ---- */

#jacgeolinescombined [zoom=6][scalerank=1][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:200;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=2][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:25;
  text-placement:line;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=3][featurecla='Plain']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:line;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=1][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:26;
  text-character-spacing:200;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=2][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:25;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:uppercase;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=3][featurecla='Plain'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:3;
  text-placement:interior;
  text-wrap-width:20;
  text-transform:capitalize;
  text-fill:lighten(black,20%);
  }

/* ---- geo area ---- */

#jacgeolinescombined [zoom=6][scalerank=1][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:24;
  text-character-spacing:50;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=1][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:24;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=2][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:50;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=2][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank=3][featurecla='Geo area']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=3][featurecla='Geo area'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

/* ---- peninsula ---- */

#jacgeoareascombined [zoom=6][scalerank<=2][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:25;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank<=2][featurecla='Peninsula']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:18;
  text-character-spacing:25;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank>=3][scalerank<=5][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeolinescombined [zoom=6][scalerank>=3][scalerank<=5][featurecla='Peninsula']{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:line;
  text-wrap-width:20;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=6][scalerank<=6][justify='C'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:middle;
  text-fill:lighten(black,20%);
  }

#jacgeopointscombined [zoom=6][scalerank<=6][justify='L'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:right;
  text-align:left;
  text-fill:lighten(black,20%);
  }
  
#jacgeopointscombined [zoom=6][scalerank<=6][justify='R'][featurecla='Peninsula'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:14;
  text-character-spacing:10;
  text-placement:point;
  text-wrap-width:20;
  text-horizontal-alignment:left;
  text-align:right;
  text-fill:lighten(black,20%);
  }

/* —— plateau —— */

#jacgeoareascombined [zoom=6][scalerank=1][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:24;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:15;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=2][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:21;
  text-character-spacing:50;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:10;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=3][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:16;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:7;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=4][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:12;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:4;
  text-fill:lighten(black,20%);
  }

#jacgeoareascombined [zoom=6][scalerank=5][featurecla='Plateau'][display=1]{
  text-face-name:'Frutiger LT Std 56 Italic';
  text-name:[name];
  text-size:10;
  text-character-spacing:10;
  text-placement:interior;
  text-wrap-width:20;
  text-line-spacing:2;
  text-fill:lighten(black,20%);
  }

/* ---- aus 10m localities ---- */

/* ---- zoom 5 ---- */

/* Admin 0 capital */

#aus10lgdp [zoom=5][CM_SYMBOL='ADM0_Capital'][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-allow-overlap:false;
  text-min-padding:2;
  text-avoid-edges:true;
  }

/* Admin 1 capital */

#aus10lgdp [zoom=5][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* Aboriginal Community */

#aus10lgdp [zoom=5][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* under 5k */

#aus10lgdp [zoom=5][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 5k - 10k */

#aus10lgdp [zoom=5][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }


#aus10lgdp [zoom=5][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 10k - 50k */

#aus10lgdp [zoom=5][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"W,NW,NE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 50k - 100k */

#aus10lgdp [zoom=5][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:4;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-4;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 100k - 500k */

#aus10lgdp [zoom=5][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=5][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:5;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* ---- zoom 6 ---- */

/* Admin 0 capital */

#aus10lgdp [zoom=6][CM_SYMBOL='ADM0_Capital'][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-allow-overlap:false;
  text-min-padding:2;
  text-avoid-edges:true;
  }

/* Admin 1 capital */

#aus10lgdp [zoom=6][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:10;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:10;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='ADM1_Capital'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-10;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* Aboriginal Community */

#aus10lgdp [zoom=6][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='Ab Comm'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* under 5k */

#aus10lgdp [zoom=6][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='Under 5k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 5k - 10k */

#aus10lgdp [zoom=6][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }


#aus10lgdp [zoom=6][CM_SYMBOL='5k-10k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 10k - 50k */

#aus10lgdp [zoom=6][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='10k-50k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,NE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 50k - 100k */

#aus10lgdp [zoom=6][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='50k-100k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 100k - 500k */

#aus10lgdp [zoom=6][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=6][CM_SYMBOL='100k-500k'][SCALERANK<=5][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 57 Condensed';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* ---- zoom 7 ---- */

/* Admin 0 capital */

#aus10lgdp [zoom=7][CM_SYMBOL='ADM0_Capital'][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:10;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-allow-overlap:false;
  text-min-padding:2;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* Admin 1 capital */

#aus10lgdp [zoom=7][CM_SYMBOL='ADM1_Capital'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 85 Heavy';
  text-size:22;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:10;
  text-dy:0;
  text-placements:"E,W,NE,SE,NW,SW,N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='ADM1_Capital'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 85 Heavy';
  text-size:22;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:10;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='ADM1_Capital'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 85 Heavy';
  text-size:22;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-12;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* Aboriginal Community */

#aus10lgdp [zoom=7][CM_SYMBOL='Ab Comm'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='Ab Comm'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='Ab Comm'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* Under 5k */

#aus10lgdp [zoom=7][CM_SYMBOL='Under 5k'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='Under 5k'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='Under 5k'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 47 Light Condensed';
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 5k - 10k */

#aus10lgdp [zoom=7][CM_SYMBOL='5k-10k'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 67 Medium Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='5k-10k'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 67 Medium Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='5k-10k'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 67 Medium Condensed';
  text-size:14;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:20;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 10k - 50k */

#aus10lgdp [zoom=7][CM_SYMBOL='10k-50k'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:30;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='10k-50k'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:30;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='10k-50k'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 55 Roman';
  text-size:16;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:30;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 50k - 100k */

#aus10lgdp [zoom=7][CM_SYMBOL='50k-100k'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 65 Medium';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-wrap-width:40;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='50k-100k'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 65 Medium';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:6;
  text-dy:0;
  text-placements:"N,S";
  text-wrap-width:40;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='50k-100k'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 65 Medium';
  text-size:18;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-6;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-wrap-width:40;
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* 100k - 500k */

#aus10lgdp [zoom=7][CM_SYMBOL='100k-500k'][SCALERANK<=7][CM_JUSTIFY='L']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 75 Bold';
  text-size:20;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"E,NE,SE";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='100k-500k'][SCALERANK<=7][CM_JUSTIFY='C']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 75 Bold';
  text-size:20;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:8;
  text-dy:0;
  text-placements:"N,S";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

#aus10lgdp [zoom=7][CM_SYMBOL='100k-500k'][SCALERANK<=7][CM_JUSTIFY='R']{
  text-name:[CM_ANNO];
  text-face-name:'Helvetica Neue LT Std 75 Bold';
  text-size:20;
  text-character-spacing:1;
  text-placement-type:simple;
  text-dx:-8;
  text-dy:0;
  text-placements:"W,NW,SW";
  text-label-position-tolerance:5;
  text-avoid-edges:true;
  text-halo-fill:@white;
  text-halo-radius:1;
  }

/* ---- admin 1 ---- */

#aus10fgdr [zoom=5][FEAT_CODE='mainland']{
  text-name:[NAME];
  text-face-name:'Cronos Pro Regular';
  text-size:16;
  text-character-spacing:2;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:20;
  }

#ne10admin1area [zoom=5][scalerank<=3]{
  text-name:[name];
  text-face-name:'Cronos Pro Regular';
  text-size:12;
  text-character-spacing:2;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:20;
  }

/* ---- national parks ---- */

/* ---- zoom 7 ---- */

#parklabels [zoom=7][SHAPE_AREA>0.1]{
  text-name:[CM_ABBREVI];
  text-face-name:'Optima LT Std Roman';
  text-size:12;
  text-fill:@black;
  text-character-spacing:1;
  text-placement:interior;
  text-align:center;
  text-allow-overlap:false;
  text-wrap-width:30;
  }
 
/* ---- zoom 6 ---- */

/* ---- aus rivers ---- */

#ausrivernamessmootha [zoom=6][SCALERANK<=6]{
  text-name:[CM_NAME_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-max-char-angle-delta:22;
  text-spacing:100;
  text-dy:8;
  text-placement:line;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-min-path-length:30;
  }

/* ---- zoom 7 ---- */

#ausrivernamessmootha [zoom=7][SCALERANK<=7]{
  text-name:[CM_NAME_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-max-char-angle-delta:22;
  text-spacing:300;
  text-dy:8;
  text-placement:line;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-min-path-length:30;
  }

/* ---- admin 1 ---- */

/* ---- zoom 6 ---- */

#aus10fgdr [zoom=6][FEAT_CODE='mainland']{
  text-name:[NAME];
  text-face-name:'Cronos Pro Regular';
  text-size:18;
  text-character-spacing:2;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:20;
  }

#ne10admin1area [zoom=6][scalerank<=3]{
  text-name:[name];
  text-face-name:'Cronos Pro Regular';
  text-size:14;
  text-character-spacing:2;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:20;
  }

/* ---- zoom 7 ---- */

#aus10fgdr [zoom=7][FEAT_CODE='mainland'][SCALERANK<=5]{
  text-name:[NAME];
  text-face-name:'Cronos Pro Regular';
  text-size:24;
  text-character-spacing:2;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:50;
  }

#aus10fgdr [zoom=7][FEAT_CODE='mainland'][SCALERANK>=6][SCALERANK<=7]{
  text-name:[NAME];
  text-face-name:'Cronos Pro Regular';
  text-size:12;
  text-character-spacing:1;
  text-placement:interior;
  text-label-position-tolerance:20;
  text-avoid-edges:false;
  text-transform:capitalize;
  text-wrap-width:20;
  }

/* ---- aus 10m lakes ---- */

/* ---- zoom 6 ---- */

#jac10mauslake [zoom=6][SCALERANK<=6][JUSTIFY='L']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:point;
  text-horizontal-alignment:right;
  text-align:left;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  }

#jac10mauslake [zoom=6][SCALERANK<=6][JUSTIFY='C']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:0;
  text-placement:point;
  text-horizontal-alignment:middle;
  text-align:center;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  }

#jac10mauslake [zoom=6][SCALERANK<=6][JUSTIFY='R']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:10;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:point;
  text-horizontal-alignment:left;
  text-align:right;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  }

/* ---- zoom 7 ---- */

#jac10mauslake [zoom=7][SCALERANK<=7][JUSTIFY='L']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:point;
  text-horizontal-alignment:right;
  text-align:left;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-wrap-character:"_";
  }

#jac10mauslake [zoom=7][SCALERANK<=7][JUSTIFY='C']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:0;
  text-placement:point;
  text-horizontal-alignment:middle;
  text-align:center;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-wrap-character:'_';
  }

#jac10mauslake [zoom=7][SCALERANK<=7][JUSTIFY='R']{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:point;
  text-horizontal-alignment:left;
  text-align:right;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-wrap-character:'_';
  }

/* —— River labels —— */

#aus10dgdl [zoom>=7][zoom<=8][SCALERANK<=7]{
  text-name:[CM_ANNO_AB];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:line;
  text-horizontal-alignment:left;
  text-align:right;
  text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;
  text-allow-overlap:false;
  text-min-distance:4;
  text-label-position-tolerance:20;
  text-dx:-8;
  text-dy:-8;
  text-transform:capitalize;
  }

#10mriverlabels [zoom=5][scalerank<=5]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-placement:line;
  text-horizontal-alignment:left;
  text-align:right;
  /*text-halo-fill:lighten(@white,10%);
  text-halo-radius:1.5;*/
  text-allow-overlap:false;
  text-min-distance:4;
  text-label-position-tolerance:20;
  text-dy:-8;
  }

/* —— Lakes labels —— */

/* zoom 5 */


#50mlakeslabels [zoom=5][scalerank<=1]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:0;
  text-wrap-width:55;
  }

#50mlakeslabels [zoom=5][scalerank>=2][scalerank<=3]{
  text-name:[name];
  text-face-name:'Frutiger LT Std 56 Italic';
  text-size:12;
  text-fill:@hydro_text;
  text-character-spacing:1;
  text-dx:8;
  text-placement:interior;
  text-wrap-width:55;
  }
