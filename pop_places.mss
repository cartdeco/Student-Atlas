/* —— zoom 3 —— */

/* ---- populated places ---- */

#jac10mpopulatedplace [zoom>=4][zoom<=5][scalerank<=4][featurecla='Admin-0 capital'][CM_DISPLAY=1]{
  marker-file:url(admin0.svg);
  marker-allow-overlap:true;
  marker-transform:scale(@symbol,@symbol);
}

#aus10lgdp [zoom>=4][zoom<=5][NAME='CANBERRA']{
  marker-file:url(admin0.svg);
  marker-allow-overlap:true;
  marker-transform:scale(@symbol,@symbol);
}

/* —— zoom 4 —— */

/* —— zoom 5 —— */

/* ---- aus 10m localities ---- */

/* ---- zoom 5 ---- */

#aus10lgdp [zoom=5][CM_SYMBOL='Ab Comm'][SCALERANK<=5]{
  marker-width:3;
  marker-fill:@white;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:true;
}

#aus10lgdp [zoom=5][CM_SYMBOL='Under 5k'][SCALERANK<=5]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=5][CM_SYMBOL='5k-10k'][SCALERANK<=5]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=5][CM_SYMBOL='10k-50k'][SCALERANK<=5]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=5][CM_SYMBOL='50k-100k'][SCALERANK<=5]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=5][CM_SYMBOL='100k-500k'][SCALERANK<=5]{
  marker-width:4;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=5][CM_SYMBOL='ADM1_Capital']{
  marker-file:url(admin1.svg);
  marker-transform:scale(0.4,0.4);
  marker-allow-overlap:true;
}

#aus10lgdp [zoom=5][CM_SYMBOL='ADM0_Capital']{
  marker-file:url(admin0.svg);
  marker-transform:scale(0.4,0.4);
  marker-allow-overlap:true;
}

/* —— zoom 6 —— */

/* ---- aus 10m localities ---- */

/* ---- zoom 6 ---- */

#aus10lgdp [zoom=6][CM_SYMBOL='Ab Comm'][SCALERANK<=6]{
  marker-width:4.5;
  marker-fill:@white;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:true;
}

#aus10lgdp [zoom=6][CM_SYMBOL='Under 5k'][SCALERANK<=6]{
  marker-width:4.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='5k-10k'][SCALERANK<=6]{
  marker-width:6;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='10k-50k'][SCALERANK<=6]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='50k-100k'][SCALERANK<=6]{
  marker-width:9;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='100k-500k'][SCALERANK<=6]{
  marker-width:11;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='ADM1_Capital'][SCALERANK<=6]{
  marker-file:url(admin1.svg);
  marker-transform:scale(0.8,0.8);
  marker-allow-overlap:true;
}

/* ---- populated places ---- */

/* admin 0 capital */

#jac10mpopplaceadmin0cap [zoom=6][scalerank<=5]{
  marker-file:url(admin0.svg);
  marker-allow-overlap:false;
  marker-transform:scale(2,2);
  marker-ignore-placement:true;
}

/* populated place */

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:2.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:2.6*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:3.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:3.8*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-file:url(tenm.svg);
  marker-transform:scale(2,2);
  marker-allow-overlap:false;
}

/* admin 0 regional capital */

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:2.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:2.6*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:3.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:3.8*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0regcap [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-file:url(tenm.svg);
  marker-transform:scale(2,2);
  marker-allow-overlap:false;
}

/* admin 0 alternate capital */

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:2.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:2.6*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:3.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:3.8*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm0altcap [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-file:url(tenm.svg);
  marker-transform:scale(2,2);
  marker-allow-overlap:false;
}

/* admin 1 capital */

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:2.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:2.6*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:3.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:3.8*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1cap [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-file:url(tenm.svg);
  marker-transform:scale(2,2);
  marker-allow-overlap:false;
}

/* admin 1 regional capital */

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:2.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:2.6*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:3.1*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:3.8*@symbol;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopplaceadm1regcap [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-file:url(tenm.svg);
  marker-transform:scale(@symbol,@symbol);
  marker-allow-overlap:false;
}

/* Scientific station */

#jac10mscientificstn [zoom=5][scalerank<=5]{
  marker-file:url(roadhouse.svg);
  marker-transform:scale(@symbol,@symbol);
  marker-allow-overlap:false;
  }

/* ---- zoom 6 ---- */

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max<=100000]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>100000][pop_max<=500000]{
  marker-width:4;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>500000][pop_max<=1000000]{
  marker-width:5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>1000000][pop_max<=5000000]{
  marker-width:6.2;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][pop_max>10000000]{
  marker-width:8.2;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=6][scalerank<=5][featurecla='Admin-0 capital']{
  marker-file:url(admin0.svg);
  marker-allow-overlap:false;
  marker-transform:scale(0.6,0.6);
}

/* ---- zoom 7 ---- */

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max<=100000]{
  marker-width:3;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max>100000][pop_max<=500000]{
  marker-width:4;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max>500000][pop_max<=1000000]{
  marker-width:5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max>1000000][pop_max<=5000000]{
  marker-width:6.2;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max>5000000][pop_max<=10000000]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][pop_max>10000000]{
  marker-width:8.2;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#jac10mpopulatedplace [zoom=7][scalerank<=6][featurecla='Admin-0 capital']{
  marker-file:url(admin0.svg);
  marker-allow-overlap:false;
  marker-transform:scale(0.6,0.6);
}

/*
#jac50popplace {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

/* —— zoom 7 —— */
/* ---- zoom 7 ---- */

#aus10lgdp [zoom=7][CM_SYMBOL='Roadhouse'][SCALERANK<=7]{
  marker-file:url(roadhouse.svg);
  marker-allow-overlap:true;
}

#aus10lgdp [zoom=7][CM_SYMBOL='Ab Comm'][SCALERANK<=7]{
  marker-width:4.5;
  marker-fill:@white;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:true;
}

#aus10lgdp [zoom=7][CM_SYMBOL='Under 5k'][SCALERANK<=7]{
  marker-width:4.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=7][CM_SYMBOL='5k-10k'][SCALERANK<=7]{
  marker-width:6;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=7][CM_SYMBOL='10k-50k'][SCALERANK<=7]{
  marker-width:7.5;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=6][CM_SYMBOL='50k-100k'][SCALERANK<=6]{
  marker-width:9;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=7][CM_SYMBOL='100k-500k'][SCALERANK<=7]{
  marker-width:11;
  marker-fill:@road;
  marker-line-width:0.3;
  marker-line-color:@black;
  marker-allow-overlap:false;
}

#aus10lgdp [zoom=7][CM_SYMBOL='ADM1_Capital'][SCALERANK<=7]{
  marker-file:url(admin1.svg);
  marker-transform:scale(0.8,0.8);
  marker-allow-overlap:true;
}
