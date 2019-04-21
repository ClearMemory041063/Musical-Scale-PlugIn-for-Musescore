//sScale.qml
// 29 Mar 2019
// Copyright (C) 2019 Joe McCarty

import QtQuick 2.1
import QtQuick.Controls 1.0
import MuseScore 3.0
import FileIO 3.0
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1

MuseScore {
 menuPath: "Plugins.Scales3"
 version: "3.0"
 description: qsTr("This plugin is used to create musical scales.") 
      requiresScore: false

ApplicationWindow{
 id:window
 flags:  Qt.Window |Qt.WindowStaysOnTopHint|Qt.WindowTitleHint 
 visible: true
 width:  500; height: 500;
////
Rectangle {
 id:rect0
 visible:true
 color: "lightgrey"
// anchors.top:menubar1.bottom
 anchors.left: window.left
 anchors.right:window.right
 anchors.bottom: window.bottom
////
 Column {
  width:window.width
  spacing:10
////
  GroupBox {
   id:scaletypeGroupbox
   title: "Select Scale Type"
   visible:true
   anchors.leftMargin: 10
   anchors.topMargin: 10
   ComboBox {
    id: scaleType
    width:100
    model: ListModel {
     id: scaleTypeList
  ListElement { text:" major "; note:" 60,62,64,65,67,69,71,72" ;} 
 ListElement { text:" minor "; note:" 60,62,63,65,67,68,70,72" ;} 
 ListElement { text:" chromatic "; note:" 60,61,62,63,64,65,66,67,68,69,70,71,72" ;} 

///
 ListElement { text:" aeolian "; note:" 60,62,63,65,67,68,70,72" ;} 
 ListElement { text:" ahirbhairav "; note:" 60,61,64,65,67,69,70,72" ;} 
 ListElement { text:" augmented "; note:" 60,63,64,67,68,71,72" ;} 
 ListElement { text:" augmented2 "; note:" 60,61,64,65,68,69,72" ;} 
 ListElement { text:" bartok "; note:" 60,62,64,65,67,68,70,72" ;} 
 ListElement { text:" bhairav "; note:" 60,61,64,65,67,68,71,72" ;} 
 ListElement { text:" blues_major "; note:" 60,62,63,64,67,69,72" ;} 
 ListElement { text:" blues_minor "; note:" 60,63,65,66,67,70,72" ;} 
 ListElement { text:" chinese "; note:" 60,64,66,67,71,72" ;} 
 ListElement { text:" diatonic "; note:" 60,62,64,65,67,69,71,72" ;} 
 ListElement { text:" diminished "; note:" 60,61,63,64,66,67,69,70,72" ;} 
 ListElement { text:" diminished2 "; note:" 60,62,63,65,66,68,69,71,72" ;} 
 ListElement { text:" dorian "; note:" 60,62,63,65,67,69,70,72" ;} 
 ListElement { text:" egyptian "; note:" 60,62,65,67,70,72" ;} 
 ListElement { text:" enigmatic "; note:" 60,61,64,66,68,70,71,72" ;} 
 ListElement { text:" gong "; note:" 60,62,64,67,69,72" ;} 
 ListElement { text:" harmonic_major "; note:" 60,62,64,65,67,68,71,72" ;} 
 ListElement { text:" harmonic_minor "; note:" 60,62,63,65,67,68,71,72" ;} 
 ListElement { text:" hex_aeolian "; note:" 60,63,65,67,68,70,72" ;} 
 ListElement { text:" hex_dorian "; note:" 60,62,63,65,67,70,72" ;} 
 ListElement { text:" hex_major6 "; note:" 60,62,64,65,67,69,72" ;} 
 ListElement { text:" hex_major7 "; note:" 60,62,64,67,69,71,72" ;} 
 ListElement { text:" hex_phrygian "; note:" 60,61,63,65,68,70,72" ;} 
 ListElement { text:" hex_sus "; note:" 60,62,65,67,69,70,72" ;} 
 ListElement { text:" hindu "; note:" 60,62,64,65,67,68,70,72" ;} 
 ListElement { text:" hirajoshi "; note:" 60,62,63,67,68,72" ;} 
 ListElement { text:" hungarian_minor "; note:" 60,62,63,66,67,68,71,72" ;} 
 ListElement { text:" indian "; note:" 60,64,65,67,70,72" ;} 
 ListElement { text:" ionian "; note:" 60,62,64,65,67,69,71,72" ;} 
 ListElement { text:" iwato "; note:" 60,61,65,66,70,72" ;} 
 ListElement { text:" jiao "; note:" 60,63,65,68,70,72" ;} 
 ListElement { text:" kumoi "; note:" 60,62,63,67,69,72" ;} 
 ListElement { text:" leading_whole "; note:" 60,62,64,66,68,70,71,72" ;} 
 ListElement { text:" locrian "; note:" 60,61,63,65,66,68,70,72" ;} 
 ListElement { text:" locrian_major "; note:" 60,62,64,65,66,68,70,72" ;} 
 ListElement { text:" lydian "; note:" 60,62,64,66,67,69,71,72" ;} 
 ListElement { text:" lydian_minor "; note:" 60,62,64,66,67,68,70,72" ;} 
 ListElement { text:" major_pentatonic "; note:" 60,62,64,67,69,72" ;} 
 ListElement { text:" marva "; note:" 60,61,64,66,67,69,71,72" ;} 
 ListElement { text:" melodic_major "; note:" 60,62,64,65,67,68,70,72" ;} 
 ListElement { text:" melodic_minor "; note:" 60,62,63,65,67,69,71,72" ;} 
 ListElement { text:" melodic_minor_asc "; note:" 60,62,63,65,67,69,71,72" ;} 
 ListElement { text:" melodic_minor_desc "; note:" 60,62,63,65,67,68,70,72" ;} 
 ListElement { text:" messiaen1 "; note:" 60,62,64,66,68,70,72" ;} 
 ListElement { text:" messiaen2 "; note:" 60,61,63,64,66,67,69,70,72" ;} 
 ListElement { text:" messiaen3 "; note:" 60,62,63,64,66,67,68,70,71,72" ;} 
 ListElement { text:" messiaen4 "; note:" 60,61,62,65,66,67,68,71,72" ;} 
 ListElement { text:" messiaen5 "; note:" 60,61,65,66,67,71,72" ;} 
 ListElement { text:" messiaen6 "; note:" 60,62,64,65,66,68,70,71,72" ;} 
 ListElement { text:" messiaen7 "; note:" 60,61,62,63,65,66,67,68,69,71,72" ;} 
 ListElement { text:" minor_pentatonic "; note:" 60,63,65,67,70,72" ;} 
 ListElement { text:" mixolydian "; note:" 60,62,64,65,67,69,70,72" ;} 
 ListElement { text:" neapolitan_major "; note:" 60,61,63,65,67,69,71,72" ;} 
 ListElement { text:" neapolitan_minor "; note:" 60,61,63,65,67,68,71,72" ;} 
 ListElement { text:" octatonic "; note:" 60,62,63,65,66,68,69,71,72" ;} 
 ListElement { text:" pelog "; note:" 60,61,63,67,68,72" ;} 
 ListElement { text:" phrygian "; note:" 60,61,63,65,67,68,70,72" ;} 
 ListElement { text:" prometheus "; note:" 60,62,64,66,71,72" ;} 
 ListElement { text:" purvi "; note:" 60,61,64,66,67,68,71,72" ;} 
 ListElement { text:" ritusen "; note:" 60,62,65,67,69,72" ;} 
 ListElement { text:" romanian_minor "; note:" 60,62,63,66,67,69,70,72" ;} 
 ListElement { text:" scriabin "; note:" 60,61,64,67,69,72" ;} 
 ListElement { text:" shang "; note:" 60,62,65,67,70,72" ;} 
 ListElement { text:" spanish "; note:" 60,61,64,65,67,68,70,72" ;} 
 ListElement { text:" super_locrian "; note:" 60,61,63,64,66,68,70,72" ;} 
 ListElement { text:" todi "; note:" 60,61,63,66,67,68,71,72" ;} 
 ListElement { text:" whole "; note:" 60,62,64,66,68,70,72" ;} 
 ListElement { text:" whole_tone "; note:" 60,62,64,66,68,70,72" ;} 
 ListElement { text:" yu "; note:" 60,63,65,67,70,72" ;} 
 ListElement { text:" zhi "; note:" 60,62,65,67,69,72" ;} 
    }//end model
    currentIndex: 0
   }
  }//end scaletype groupbox
///
  GroupBox {
   id:pitchGroupbox
   visible:true
   title: "Enter Note or Chord Pitch"
   anchors.leftMargin: 10
   anchors.topMargin: 10
   Column{   
    GroupBox {
     id:pitchGroupbox1
     visible:true
     title: "Enter Note or Chord Pitch"
     anchors.leftMargin: 10
     anchors.topMargin: 10
     Label {
      id:gb3Labela
      anchors.leftMargin: 10
      anchors.topMargin: 10
      text: "Octave = "
     }//end Label
     Label {
      id:gb3Label
      anchors.left:gb3Labela.right
      anchors.leftMargin: 10
      anchors.topMargin: 10
      text: "4"
     }//end Label
     Button{
      id:upButton
      anchors.left:gb3Label.right
      anchors.leftMargin: 10
      anchors.topMargin: 10
      text: qsTranslate("PrefsDialogBase", "Up")
      onClicked: {
       var x=gb3Label.text;
       if(x<10){
        x++;
        pitch=pitch+12;
       }
       gb3Label.text=x;
       keyboard.title=getnotename(pitch);
      }//end on clicked
     }//end upbutton
     Button{
      id:downButton
      anchors.left:upButton.right
      anchors.leftMargin: 10
      anchors.topMargin: 10
      text: qsTranslate("PrefsDialogBase", "Down")
      onClicked: {
       var x=gb3Label.text;
       if(x>0){
        x--;
        pitch=pitch-12;//+(gb3Label.text-4)*12;
       }
       gb3Label.text=x;
       keyboard.title=getnotename(pitch);
      }//end on clicked
     }//end downButton
    }//end pitchGB1
///
    GroupBox {
     id:keyboard
     title: "60 C4"
     anchors.leftMargin: 10
     anchors.topMargin: 10
     Row{ 
      Button{
       id:cnote
       width: 30
       text: "C"
       onClicked:{setnote(0);}
      }//end button
      Button{
       id:csnote
       width: 30
       text: "C#"
       style: ButtonStyle {
        background:Rectangle {
        color:"#BBB"
        }
       }
       onClicked:{setnote(1);}
      }//end button
      Button{
       id:dnote
       width: 30
       text: "D"
       onClicked:{setnote(2);}
      }//end button
      Button{
       id:dsnote
       width: 30
       text: "D#"
       style: ButtonStyle {
        background:Rectangle {
        color:"#BBB"
        }
       }
       onClicked:{setnote(3);}
      }//end button
      Button{
       id:enote
       width: 30
       text: "E"
       onClicked:{setnote(4);}
      }//end button
      Button{
       id:fnote
       width: 30
       text: "F"
       onClicked:{setnote(5);}
      }//end button
      Button{
       id:fsnote
       width: 30
       text: "F#"
       style: ButtonStyle {
        background:Rectangle {
        color:"#BBB"
        }
       }
       onClicked:{setnote(6);}
      }//end button
      Button{
       id:gnote
       width: 30
       text: "G"
       onClicked:{setnote(7);}
      }//end button
      Button{
       id:gsnote
       width: 30
       text: "G#"
       style: ButtonStyle {
        background:Rectangle {
        color:"#BBB"
        }
       }
       onClicked:{setnote(8);}
      }//end button
      Button{
       id:anote
       width: 30
       text: "A"
       onClicked:{setnote(9);}
      }//end button
      Button{
       id:asnote
       width: 30
       style: ButtonStyle {
        background:Rectangle {
        color:"#BBB"
        }
       }
       text: "A#"
       onClicked:{setnote(10);}
      }//end button
      Button{
       id:bnote
       width: 30
       text: "B"
       onClicked:{setnote(11);}
      }//end button
      Button{
       id:c5snote
       width: 30
       text: "C"
       onClicked:{setnote(12);}
      }//end button
     }//end row
    }//end keyboard groupbox
   }//end column
  }//end pitchgb
///
  GroupBox {
   id:durationGroupbox
   visible:true
   title: "Select Note, Chord or Rest Duration"
   anchors.leftMargin: 10
   anchors.topMargin: 10
   Column{
    GroupBox{
     id:durGB
     visible:true
     anchors.leftMargin: 10
     anchors.topMargin: 10
     Row{
      Button{
       id:ndNumupButton
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: qsTranslate("PrefsDialogBase", "Up")
       onClicked: {
        var x=ndNumLabel.text;
        x++;
        ndNumLabel.text=x;
       }//end on clicked
      }//end upbutton
      Button{
       id:ndNumdownButton
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: qsTranslate("PrefsDialogBase", "Down")
       onClicked: {
       var x=ndNumLabel.text;
        if(x>1){
         x--;  
        }
        ndNumLabel.text=x;
       }//end on clicked
      }//end downButton
///
      Label {
       id:ndNumLabela
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: "Note Duration = "
      }//end Label
      Label {
       id:ndNumLabel
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: "1"
      }//end Label
      Label {
       id:ndNumLabelb
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: "/"
      }//end Label
      Label {
       id:ndDenLabel
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: "8"
      }//end Label
      Button{
       id:ndDenupButton
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: qsTranslate("PrefsDialogBase", "Up")
       onClicked: {
        var x=ndDenLabel.text;
        if(x<32)x=x*2;
        ndDenLabel.text=x;
       }//end on clicked
      }//end upbutton
      Button{
       id:ndDendownButton
       anchors.leftMargin: 10
       anchors.topMargin: 10
       text: qsTranslate("PrefsDialogBase", "Down")
       onClicked: {
        var x=ndDenLabel.text;
        if(x>1)x=x/2;  
        ndDenLabel.text=x;
       }//end on clicked
      }//end downButton
     }//end row
    }//end duroupbox
    GroupBox {
     id:tkeys  
     visible:true
     anchors.leftMargin: 10
     anchors.topMargin: 10
     Row{
      Button{
       id:thirty2
       text: "1/32"
       onClicked:{
        ndDenLabel.text=32;
        ndNumLabel.text=1;
       }
      }//end button
      Button{
       id:sixteenth
       text: "1/16"
       onClicked:{
        ndDenLabel.text=16;
        ndNumLabel.text=1;
       }
      }//end button
      Button{
       id:eighth
       text: "1/8"
       onClicked:{
        ndDenLabel.text=8;
        ndNumLabel.text=1;
       }
      }//end button
      Button{
       id:quarter
       text: "1/4"
       onClicked:{
        ndDenLabel.text=4;
        ndNumLabel.text=1;
       }
      }//end button
      Button{
       id:half
       text: "1/2"
       onClicked:{
        ndDenLabel.text=2;
        ndNumLabel.text=1;
       }
      }//end button
      Button{
       id:whole
       text: "1/1"
       onClicked:{
        ndDenLabel.text=1;
        ndNumLabel.text=1;
       }
      }//end button
     }//end row
    }//end tkeys GB
   }//end Column
  }//end durationb GB
////
  GroupBox {
   id:scaledir
   title: "Scale Direction"
   visible:true
   Row {
    ExclusiveGroup { id: scale1Group }
    RadioButton {
     id:scaleup
     text: "Up"
     checked: true
     exclusiveGroup: scale1Group
    }//end radiobutton
    RadioButton {
     id:scaledown
     text: "Down"
     exclusiveGroup: scale1Group
    }//end radiobutton
   }//end Row
  }//end scaledir groupbox
////
  GroupBox {
   id:msSyncGB
   visible:true
   title: "Musecore Selection Sync"
   Row{
    spacing:100
    Button{
     id:syncButton
     anchors.leftMargin: 10
     anchors.topMargin: 10
     text: qsTranslate("PrefsDialogBase", "Sync")
     onClicked: {
      findSegment(0,0); 
     }//end on clicked
    }//end syncButton
    Label {
     id:syncLabel
     anchors.leftMargin: 10
     anchors.topMargin: 10
     text: "Full Score Selected"
    }//end syncLabel
   }//end row
  }//end msSyncGB
////
  Row{
  GroupBox {
   id:page3contol
   visible:true
   anchors.leftMargin: 10
   anchors.topMargin: 10
   Button{
    id:scaleButton
    anchors.leftMargin: 10
    anchors.topMargin: 10
    text: qsTranslate("PrefsDialogBase", "Scales") 
    onClicked: {
     var sss="-1,Staff,0,Voice,0;";//msg header
     var i;
     var scale1,scale2;
     var scale3=[];
     var scale;
     findSegment(0,0); 
     scale1=scaleType.model.get(scaleType.currentIndex).note;
     console.log("Scale= ",scale1);
     scale2=scale1.split(",");
     for(i=0;i<scale2.length;i++)
      scale3.push(parseInt(scale2[i],10));
     scale=scale3;
     if(scaledown.checked)scale=scale3.reverse(); 
     for(i=0;i<scale.length;i++){
      sss+=ndNumLabel.text;
      sss+=",";
      sss+=ndDenLabel.text;
      sss+=",";
      sss+=scale[i]-60+pitch;
      sss+=";";
     }//next i
     sss+=":,";
     pasteit(sss,0);
     nextNote();
   }//end on clicked
  }//end restButton
 }//end page3control groupbox
////
 GroupBox {
  id:exitHome
  anchors.leftMargin: 10
  anchors.topMargin: 10
  Row{
   Button{
    id:page2exit
    anchors.leftMargin: 10
    anchors.topMargin: 10
    text: qsTranslate("PrefsDialogBase", "Exit")
    onClicked: {
     window.close(); Qt.quit();
    }//end on clicked
   }//end page2exit
  }//end row
 }//end exitHome groupbox
}//end row
}//end column
}//end rect0
}//end myWindow
/////////////////////////

////////////////////
// function to create and return a new Note element with given (midi) pitch, tpc1, tpc2 and headtype
 function createNote(pitch, tpc1, tpc2, head){
  var note = newElement(Element.NOTE);
  console.log("pitch= ",pitch);
  note.pitch = pitch;
  var pitch_mod12 = pitch%12; 
  var pitch2tpc=[14,21,16,23,18,13,20,15,22,17,24,19]; //get tpc from pitch... yes there is a logic behind these numbers :-p
  if (tpc1){
   note.tpc1 = tpc1;
   note.tpc2 = tpc2;
  }else{
   note.tpc1 = pitch2tpc[pitch_mod12];
   note.tpc2 = pitch2tpc[pitch_mod12];
  }//endif
  if (head) note.headType = head; 
///xxxx  else note.headType = NoteHead.HEAD_AUTO;
   console.log("  created note with tpc: ",note.tpc1," ",note.tpc2," pitch: ",note.pitch);
  return note;
 }//end createNote 
////////////////////////////////////////////////////////// 
 function setCursorToTime(cursor, time){
  cursor.rewind(0);
  while (cursor.segment) { 
   var current_time = cursor.tick;
   if(current_time>=time){
    return true;
   }//endif
   cursor.next();
  }//end while
  cursor.rewind(0);
  return false;
 }//end setCursorTo Time
/////////////////////////////////////////////////////////////
// global variables to allow apply to repeat
 property var rflag: false
 property var cursor: 0
 property var cscore: 0 
 property var endTick: 0
 property var startTick: 0
 property var fullScore: false;
 property var startStaff: 0
 property var endStaff: 0

///////////////////////////////////////////
// Apply the given function to all notes in selection
// or, if nothing is selected, in the entire score

 function apply(nt,ichord,staff,voice){
  var slen; 
  var i=0;
  var next_time;
  var chord; 
  var cur_time;
  var rest; 
  cursor.staffIdx = staff; 
  cursor.voice = voice; //voice has to be set after goTo
  if(ichord[0]>-1){
   slen=ichord.length;
   cur_time=cursor.tick;
   //console.log("chord= ",nt,ichord);   
   cursor.setDuration(nt[0],nt[1]);
   cursor.addNote(ichord[0]); //add 1st note
/*   
   next_time=cursor.tick;
   setCursorToTime(cursor, cur_time);
    //rewind to this note
    //get the chord created when 1st note was inserted
   chord = cursor.element; 
   for(var i=1; i<ichord.length; i++){
    //add notes to the chord
    chord.add(createNote(ichord[i])); 
   }//next i
   setCursorToTime(cursor, next_time);
*/   
  }else{ // add a rest
   // add a note to beep
   cur_time=cursor.tick;
   cursor.setDuration(nt[0],nt[1]);
   cursor.addNote(60); //add 1st note
   next_time=cursor.tick;
   setCursorToTime(cursor, cur_time); //rewind to this note
   //replace note with rest
   rest = newElement(Element.REST);
   rest.durationType = cursor.element.durationType;
   rest.duration = cursor.element.duration;cursor.add(rest);
   cursor.next();
  }//end else
console.log("xxxxxxxxxxxxxx ",cursor.tick,endTick);
  if(cursor.tick<endTick)return 1;
  if(fullScore)return 1;
  return 0;
 }//end apply function
/////////////////////////////////////////////////
function pasteit(tune9,direction){
   var tune1=tune9.split(":");//tune1 is array of tracks
   var tune=tune1[0].split(";"); 
   var nt=[];
   var ichord=[];
   var a,b; 
   var i,j,k,staff,voice;
   var staff1=0;
   var voice1=0;
   var skip=1;
// Loop thru the staffs and voices present in tune1
  for(k=0;k<tune1.length;k++){
console.log("pasteit ",k); 
console.log("startStaff ",startStaff," endStaff ",endStaff);
// if startstaff== endstaff, both 0 staff=0, both 1 staff=1
// start=0 and end=1 or more? 
    setCursorToTime(cursor, startTick); 
    tune=tune1[k].split(";");
    a=tune[0].split(","); //get the staff,voice header
    if(a[0]!= -1){// not the correct info
     return;
    }
    if(direction){//a reverse paste
     var tt=tune.slice(0, tune.length-1);
     tt.push(tune[0]);
     tt=tt.reverse();
//     tt.pop();
     tune=tt;
    }//endif direction
    staff1=a[2];
    if(startStaff == endStaff)staff1=startStaff;
    voice1=a[4];
    skip=1;
    for(i=1;i<tune.length-1;i++){ //tune[0] is track voice info
     a=tune[i].split(",");
     nt=[];
     nt.push(a[0]);nt.push(a[1]);
     ichord=[];
     for(j=2;j<a.length;j++)ichord.push(a[j]);
     if(skip>0){
      cscore.startCmd();
      skip=apply(nt,ichord,staff1,voice1);
      cscore.endCmd();
     }//end if skip
    }//next i
   
   }//next k
}//end pasteit

 function findSegment(voice,staff){
  fullScore = false;
   cscore=curScore;
   //cscore.startCmd();
   cursor = curScore.newCursor();
console.log("ctick ",cursor.tick);
console.log("cStaff ",cursor.staffIdx);
   cursor.rewind(1); //to start of segment
   if (!cursor.segment) { // no selection
    fullScore = true;
    startStaff = 0; // start with 1st staff
    endStaff = curScore.nstaves - 1; // and end with last
    startTick=cursor.tick;
   } else {
    startStaff = cursor.staffIdx;
    startTick=cursor.tick;
    cursor.rewind(2);//end of selection
    if (cursor.tick == 0) {
// this happens when the selection includes
// the last measure of the score.
// rewind(2) goes behind the last segment (where
// there's none) and sets tick=0
     endTick = curScore.lastSegment.tick + 1;
   } else {
    endTick = cursor.tick;
   }//end if cursor.tick
   endStaff = cursor.staffIdx;
  }//end cursor.segment
  console.log(startStaff + " - " + endStaff + " - " + endTick)
  cursor.rewind(1); // sets voice to 0
  cursor.voice = voice; //voice has to be set after goTo
  cursor.staffIdx = staff; 
  if (fullScore)
   cursor.rewind(0);//no selection, beginning of score
  cursor.staffIdx = startStaff; //staff; 
  cursor.voice = voice; //voice has to be set after goTo

console.log("staff ",staff," voice ",voice);
console.log("cursor.tick ",cursor.tick," cursor.staffIdx ",cursor.staffIdx);
console.log("startTick",startTick," endTick ",endTick);
console.log("fullScore ",fullScore); 
 if(fullScore){
  syncLabel.text = "Full Score Selected";
  return;
 }else{
   syncLabel.text = "Start tick= "+startTick+" End Tick= "+endTick;
  }//end else
 }//end findSegemnt

/////////////////
 onRun: {
  window.showNormal();
  //adjust horizontal position of plugin window
  window.x=window.x * 2.0-50;//-250;
  findSegment(0,0);
 }//end onRun
//////////////////////////////////////////////
//////////////////////////////////////////////
/////////////////////////////////////////
 property var pitch:60
 function setnote(n){
  pitch=n+60+(gb3Label.text-4)*12;
  keyboard.title=getnotename(pitch);
 }
 ////
//// 

  function copyarray(a){
   var b=[];
   for(var i=0;i<a.length;i++) b.push(a[i]);
   return b;
  }//end copyarray

function nextNote(){
 if(cscore)cscore.startCmd();
 if(cursor){
//  cursor.next();
  startTick=cursor.tick;
 } 
 if(cscore) cscore.endCmd();
}//end
 property var  notename:"C,C#/Db,D,D#/Eb,E,F,F#/Gb,G,G#/Ab,A,A#/Bb,B"
 function getnotename(n){
  var sss="";
  var notename1=notename.split(",");
  sss+= n;
  sss+= " ";
  sss+= notename1[n%12];
  sss+= " ";
  sss+= (n-(n%12))/12-1;
  return sss
 }//end getnotename
////
////
}//end Musescore
