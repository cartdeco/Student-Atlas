/* ---- STUDENT ATLAS MULTI-PUBLISHED STYLES ---- */

/*

  Styles for the map have been created with print, web and mobile display in
  mind. Line weights have had a 'design operator' applied to them to mimic the
  visible appearance of the print map on screen display. For example, a 0.25 pt
  line weight in print appears as 2 pixels on screen, when viewed on a Retina
  Display iPad (326 ppi). For a standard resolution iPad a 0.25 pt line would
  equate to 1 pixel width.

  Symbol sizes have also had a 'design operator' applied to them, approximately
  1.6 times

  ----- */
 
/*
   created by Craig Molyneux for Masters of Land Information research project
   2013.
*/
 
/* ===============================================
                   MAP PARAMETERS
   ===============================================  */

Map {
  background-color: @white;
  buffer-size:4096;
}


/* ===============================================
                 ZOOM 0 to 2 THEMATIC
   ===============================================  */

/* Zoom 0 scale = 1:591 657 550
   Zoom 1 scale = 1:295 828 775
   Zoom 2 scale = 1:147 914 387
   ----
   Data used from Natural Earth 1.4 1:10 000 000 cultural and physical dataset.
   The neutral grey base allows for thematic global data overlays.

   Global views allow the students to discover relationships between data. Limit
   thematic world views to zoom levels 0-2.

   Add master datasets on top of this base layer.

   Geographic lines layer must be placed over theme, (use layers window) to show
   data relationships with lines of latitude, in particular climate data.

   Un-comment the geographic lines layer below to stylise. When exporting the
   .mbtiles file, limit to zoom levels 0-2.
*/
/*
#countries [zoom>=0][zoom<=2]{
  polygon-fill: @neutral_grey;
  polygon-gamma:0.5;
}

#ne10madmin0boundaryl [zoom=2]{
  line-width:0.5;
  line-color:@white;
}

#ne110mlakes [zoom=2]{
  polygon-opacity:1;
  polygon-fill:@white;
}
/*
#ne10mgeographiclines [zoom>=2][featurecla='Circle of latitude'] {
  line-width:0.7;
  line-color:lighten(@black,50);
  line-dasharray:5,2;
}


/* ===============================================
                ZOOM 0 to 2 REFERENCE
   ===============================================  */

/* Zoom 0 scale = 1:591 657 550
   Zoom 1 scale = 1:295 828 775
   Zoom 2 scale = 1:147 914 387
   ----
   Data used from Natural Earth 2.0 1:10 000 000 cultural and physical dataset.

   Geographic lines layer must be placed over theme, (use layers window) to show
   data relationships with lines of latitude, in particular climate data.

   Un-comment the geographic lines layer below to stylise. When exporting the
   .mbtiles file, limit to zoom levels 0-2.
*/
/*
#countries [zoom>=0][zoom<=2]{
  polygon-fill: @neutral_grey;
  polygon-gamma:0.5;
}

#ne10madmin0boundaryl [zoom=2]{
  line-width:0.5;
  line-color:@white;
}
*/
#ne110mlakes [zoom=2]{
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#10mocean [zoom>=0][zoom<=2]{
  polygon-fill: @base;
  polygon-opacity:1;
  }
/*
#ne110mocean [zoom>=0][zoom<=2]{
  polygon-fill: @base;
  polygon-opacity:1;
  }
*/

#ne10mgeographiclines [zoom>=2][featurecla='Circle of latitude'] {
  line-width:0.7;
  line-color:lighten(@black,50);
  line-dasharray:5,2;
}

/* —— coastline —— */

#ne10mcoastline [zoom=2]{
  line-width:0.3;
  line-color:lighten(@coastline,10%);
}

/* ---- landcover ---- */

#ne2lrlcmercator [zoom=2]{
  raster-opacity:0.8;
  raster-comp-op:multiply;
  raster-scaling:gaussian;
  raster-filter-factor:1;
}

/* ---- shaded relief ---- */

#cleantopo2webmerc [zoom=2]{
  raster-opacity:0.6;
  raster-comp-op:multiply;
  raster-scaling:bilinear;
  raster-filter-factor:1;
}

/* ===============================================
                    ZOOM 3 to 4
   ===============================================  */

/* Zoom 3 scale = 1:73 957 193
   Zoom 4 scale = 1:36 978 669
   ----
   Data derived from Natural Earth 2.0 1:50 000 000 cultural and physical dataset.
   
   Political world view showing countries, political borders, disputed borders,
   Pacific ocean borders and major seas and oceans. Physical features, such as
   major lakes are shown to provide context.

   This map equates to the world reference map in the student atlas.

   No other data sets should be overlaid on this layer.
*/

/* ---- oceans ---- */

#10mocean [zoom>=3][zoom<=4]{
  polygon-opacity:1;
  polygon-fill:@base;
}

/* ---- antarctic ice shelves ---- */

#ne10mantarcticiceshe [zoom>=3][zoom<=7]{
  polygon-opacity:1;
  polygon-fill:@ice_shleves;
}

/* ---- coastline ---- */

#ne10mcoastline [zoom>=3][zoom<=7]{
  line-width:0.3;
  line-color:@coastline;
}
 
/* ---- lakes ---- */

#ne50mlakes [zoom>=3][zoom<=5][scalerank<=3][featurecla='Lake']{
  line-color:lighten(@coastline,5);
  line-width:0.7;
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#ne50mlakes [zoom>=3][zoom<=5][scalerank<=3][featurecla='Reservoir']{
  line-color:lighten(@coastline,5);
  line-width:0.7;
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#ne50mlakes [zoom>=3][zoom<=5][scalerank<=3][featurecla='Alkaline Lake']{
  line-color:lighten(@coastline,5);
  line-width:0.5;
  polygon-pattern-file:url(dry_lake.png);
}

#ne50mlakeshistoric [zoom>=3][zoom<=5]{
  line-color:lighten(@coastline,5);
  line-width:0.5;
  line-dasharray:4,1;
}

/* ---- countries ---- */
/*
#countries [zoom>=3][zoom<=4][MAP_COLOR=0]{
  polygon-opacity:1;
  polygon-fill:@country_0;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=1]{
  polygon-opacity:1;
  polygon-fill:@country_1;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=2]{
  polygon-opacity:1;
  polygon-fill:@country_2;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=3]{
  polygon-opacity:1;
  polygon-fill:@country_3;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=4]{
  polygon-opacity:1;
  polygon-fill:@country_4;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=5]{
  polygon-opacity:1;
  polygon-fill:@country_5;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=6]{
  polygon-opacity:1;
  polygon-fill:@country_6;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=7]{
  polygon-opacity:1;
  polygon-fill:@country_7;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=8]{
  polygon-opacity:1;
  polygon-fill:@country_8;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=9]{
  polygon-opacity:1;
  polygon-fill:@country_9;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=10]{
  polygon-opacity:1;
  polygon-fill:@country_10;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=11]{
  polygon-opacity:1;
  polygon-fill:@country_11;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=12]{
  polygon-opacity:1;
  polygon-fill:@country_12;
}

#countries [zoom>=3][zoom<=4][MAP_COLOR=13]{
  polygon-opacity:1;
  polygon-fill:@country_13;
}
*/
 
/* ---- admin 0 land boundaries ---- */

#ne10madmin0boundaryl[zoom>=3][zoom<=4][CM_DISPLAY=1]{
  line-width:1;
  line-color:lighten(@black,20);
  line-cap:round;
  line-dasharray:0.1,2; 
}

#ne10madmin0boundaryb [zoom>=3][zoom<=4]{
  line-width:1;
  line-color:@disputed_red;
  line-cap:round;
  line-dasharray:0.1,2;
}

/* ---- landcover ---- */

#ne2lrlcmercator [zoom >=3][zoom<=8]{
  raster-opacity:1;
  raster-comp-op:multiply;
}

/* ---- shaded relief ---- */

#cleantopo2webmerc [zoom >=3][zoom<=8]{
  raster-opacity:0.7;
  raster-comp-op:multiply;
  raster-scaling:bilinear;
}


/* ===============================================
                    ZOOM 5 - 7
   ===============================================  */

/* Zoom 5 scale = 1:18 489 298
   Zoom 6 scale = 1:9 244 649
   Zoom 7 scale = 1:4 622 333
   ----
   Data derived from Natural Earth 2.0 1:10 000 000 cultural and physical dataset.
   Topographic data is brought in at this scale to replicate physical maps from
   atlas.

   Australian data is derived from Geoscience Australia 1:10m dataset, modified
   for use in TileMill.

   CleanTopo2 relief is used as a topographic relief layer and is combined
   with Natural Earth land cover data to provide a realistic view of the
   landscape.

   No other data sets should be overlaid on this layer.
*/

/* ---- oceans ---- */

#ne10moceansinglecm [zoom>=3][zoom<=4]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

/* ---- antarctic ice shelves ---- */

#ne10mantarcticiceshe [zoom>=4][zoom<=6]{
  polygon-opacity:1;
  polygon-fill:@ice_shleves;
}

/* ---- coastline ---- */

#ne10mcoastline [zoom>=4][zoom<=6]{
  line-width:0.7;
  line-color:@coastline;
}

/* ---- lakes ---- */

#ne10mlakes [zoom>=6][zoom<=7][featurecla='Lake']{
  line-color:@coastline;
  line-width:0.7;
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#ne10mlakes [zoom>=6][zoom<=7][featurecla='Reservoir']{
  line-color:@coastline;
  line-width:0.7;
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#ne10mlakes [zoom>=6][zoom<=7][featurecla='Alkaline Lake']{
  line-color:@coastline;
  line-width:0.7;
  polygon-pattern-file:url(dry_lake.png);
}

#ne10mplayas [zoom>=6][zoom<=7]{
  line-color:@coastline;
  line-width:0.7;
  polygon-pattern-file:url(dry_lake.png);
}

/* ---- reefs ---- */

#ne10mreefs [zoom>=5]{
  line-width:1.5;
  line-color:lighten(@coastline,10%);
}

#aus10ogdr [zoom>=5][zoom<=7]{
  polygon-fill:@reef;
  }

/* ---- rivers ---- */

#ne10mriverslakecente [zoom=4][scalerank<=4]/*[featurecla='River']*/{
  line-width:0.5;
  line-color:lighten(@river,10%);
}

#ne10mriverslakecente [zoom=5][scalerank<=6]/*[featurecla='River']*/{
  line-width:0.7;
  line-color:lighten(@river,10%);
}

#ne10mriverslakecente [zoom=6][scalerank<=7]/*[featurecla='River']*/{
  line-width:0.7;
  line-color:lighten(@river,10%);
}
 
#10mriverlabels [zoom=5]/*[featurecla='River']*/{
  line-width:1;
  line-simplify:20;
  line-smooth:1;
  line-color:white;
  line-opacity:0;
  }

/* ---- antarctic claims ---- */

#ne10madmin0antlines [zoom>=4][zoom<=7]{
  line-width:1;
  line-color:lighten(@black,20);
  line-cap:round;
  line-dasharray:0.1,2;
}

#ne10madmin0antarctic [zoom>=4][zoom<=6]{
  line-color:@country_1;
  line-width:6;
}

/* ---- admin 1 boundaries ---- */

/* ---- zoom 5 ---- */
/*
#ne10madmin1statespro [zoom=5][scalerank<=2]{
  ::line {
    line-color:lighten(@country_4,20%);
    line-width:4;
    line-cap:round;
    line-gamma-method:multiply;
    line-comp-op:multiply;
    }
  line-width:1;
  line-color:lighten(@admin1_stroke,20%);
  line-cap:round;
  line-dasharray:0.1,3;
}
*/
/* ---- zoom 6 & 7 ---- */

#ne10madmin1statespro [zoom>=6][scalerank<=3]{
  ::line {
    line-color:lighten(@country_4,15%);
    line-width:5;
    line-cap:round;
    line-join:round;
    line-gamma-method:multiply;
    line-comp-op:multiply;
      }
  line-width:1.5;
  line-color:lighten(@admin1_stroke,10%);
  line-cap:round;
  line-dasharray:0.1,3.5;
}

/* ---- admin 0 boundaries ---- */
/*
#ne10madmin0boundaryb [zoom>=4][zoom<=7]{
  line-width:1;
  line-color:@disputed_red;
  line-cap:round;
  line-dasharray:0.1,2;
}
*/

/* ---- admin 0 boundary ---- */

/* ---- zoom 4-5 ---- */

#ne10madmin0boundaryl [scalerank<=2][zoom>=4][zoom<=5][CM_DISPLAY=1]{
  ::line {
    line-color:lighten(#dabca8,20%);
    line-width:6;
    line-cap:round;
    line-join:round;
    line-gamma-method:multiply;
    line-comp-op:multiply;
      }
  line-width:1;
  line-color:lighten(@black,20);
  line-cap:round;
  line-dasharray:0.1,2;
}

#ne10madmin0pacificgr [zoom>=4][zoom<=5]{
  line-width:1;
  line-color:lighten(@black,20);
  line-cap:round;
  line-dasharray:0.1,2; 
}

/* ---- zoom 6 ---- */

#ne10madmin0boundaryl [scalerank<=2][zoom>=6][zoom<=7]{
  ::line {
    line-color:lighten(#dabca8,15%);
    line-width:9;
    line-cap:round;
    line-join:round;
    line-gamma-method:multiply;
    line-comp-op:multiply;
      }
  line-width:1.5;
  line-color:@black;
  line-cap:round;
  line-dasharray:0.1,3.5;
}

#maritimeboundary [zoom>=6][zoom<=7]{
  line-width:1.5;
  line-color:@disputed_red;
  line-cap:round;
  line-dasharray:0.1,3.5;
}
/*
#ne10madmin0pacificgr [zoom>=6][zoom<=7]{
  line-width:1.5;
  line-color:lighten(@black,20);
  line-cap:round;
  line-dasharray:0.1,3.5; 
}
*/
#ne10madmin0boundaryb [zoom>=5][zoom<=7]{
  line-width:1.5;
  line-color:@disputed_red;
  line-cap:round;
  line-dasharray:0.1,3.5;
}

/* ---- relief ---- */

#cleantopo2webmerc [zoom>=5]{
  raster-opacity:0.6;
}

/* ---- bathymetry ---- */

#ne10mbathymetrya1000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryc8000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetrye6000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryg4000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryi2000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryj1000 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryk200 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

#ne10mbathymetryl0 [zoom>=5]{
  polygon-opacity:1;
  polygon-fill:@base;
  polygon-comp-op:multiply;
}

/* ---- lakes ---- */

#aus10wgdr [zoom>=5][zoom<=7][PERENNIAL='1']{
  line-color:@coastline;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@perennial_water;
}

#aus10wgdr [zoom>=5][zoom<=7][PERENNIAL='2']{
  line-color:@coastline;
  line-width:0.5;
  polygon-pattern-file:url(dry_lake.png);
}

/* ---- geographic lines ---- */

#ne10mgeographiclines [zoom>=5][zoom<=7][featurecla='Circle of latitude']{
  line-color:@black;
  line-width:0.6;
  line-dasharray:8,3;
  }

#ne10mgeographiclines [zoom>=4][zoom<=7][featurecla='Date line']{
  ::band {
    line-color:lighten(@road_brown,20%);
    line-width:6;
    line-comp-op:multiply;
      }
  ::line  {
    line-color:lighten(@black,20%);
    line-width:0.6;
    line-dasharray:16,5;
  }
}

/* ---- national parks ---- */

/* ---- zoom 6 and 7 ---- */

#250kreservesnational [zoom>=6][zoom<=7]{
  line-color:lighten(@park_stroke,10);
  line-width:0.7;
  line-cap:round;
  polygon-fill:lighten(@park_band,5%);
  polygon-comp-op:multiply;
  }

/* ---- aus rivers ---- */

#aus10dgdl [zoom=5][SCALERANK<=5]{
  line-width:0.6;
  line-color:@river;
}

#aus10dgdl [zoom=6][SCALERANK<=6]{
  line-width:0.8;
  line-color:@river;
}

#aus10dgdl [zoom=7][SCALERANK<=7]{
  line-width:1;
  line-color:@river;
}

/* ---- OSM roads ---- */
/*
#planetosmline [zoom>=6][highway='motorway']{
  line-width:1;
  line-color:@road_brown;
  }

#planetosmline [zoom>=6][highway='trunk']{
  line-width:1;
  line-color:@road_brown;
  }
*/
/* ---- aus roads 10m ---- */

#aus10vgdl [zoom>=6][NRN!='null']{
  line-width:0.5;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='1']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='A1']{
  line-width:1;
  line-color:@road;
}
#aus10vgdl [zoom>=6][NRN='1-83']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='8']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='12']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='13']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='15']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='15-42']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='15-44']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='15-34']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='16']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='16-31']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='16-75']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='17']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='18']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='18-23']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='20']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='A20']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='20-41']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='20-79']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='23']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='24']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='25']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='27']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='31']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='32']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='32-64']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='32-79']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='34']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='34-39']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='37']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='38']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='39']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='39-16']{
  line-width:1;
  line-color:@road;
}
#aus10vgdl [zoom>=6][NRN='39-24']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='39-54']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='41']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='42']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='44']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='47']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='48']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='52']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='54']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='54-55']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='55']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='56']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='56-83']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='58']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='64']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='64-83']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='66']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='66-78']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='66-83']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='71']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='75']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='78']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='79']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='A79']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='80']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='83']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='87']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='A94']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='94']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='95']{
  line-width:1;
  line-color:@road;
}

#aus10vgdl [zoom>=6][NRN='96']{
  line-width:1;
  line-color:@road;
}

/* ---- antarctic ice shelves ---- */

#ne10mantarcticiceshelves {
  line-width:1;
  line-color:#168;
}

/* —— landcover mask —— */

#countriescomp {
  polygon-opacity:1;
  polygon-fill:black;
  comp-op:dst-in;
}
