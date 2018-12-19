// Scales.qml
// 19Dec2018
// Joe McCarty
// Musescore v2.3.4 rev4592407
// This program creates a new score with a acending and //
// decending scales based on a scale type, starting note, octave and
// selected note timing of 1/32, 1/16, 1/8, 1/4, 1/2 or whole 
// note

// import modules
import MuseScore 1.0
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1

// the plugin code begins here
MuseScore {
 version: "1.0.0"
 menuPath: "Plugins.Scales" // addin location
 description: "Creates an acending and decending Scale"
 pluginType: "dialog"
 width: 300
 height: 200
// fuction to get the note from ComboBox
 function getPivotNote(){
  return pivotNote.model.get(pivotNote.currentIndex).note
 }// end get pivot note
// function to get note timing 1/8, 1/16 etc from ComboBox
 function getNoteType(){
  return noteType.model.get(noteType.currentIndex).note
 }// end get note type
// function to get octave from ComboBox
 function getOctave(){
  return octave.model.get(octave.currentIndex).note
 }// end get octave
// function to get scale type
 function getScaleType(){
  return scaleType.model.get(scaleType.currentIndex).note
 }//end get scale type
//
 function error(errorMessage) {
  errorDialog.text = qsTr(errorMessage)
  errorDialog.open()
 }//end error

// data to supply numerator, denominator and number of measures
property var notetime:[ 
//numerator,denominator, bars for 16 notes
 [1,32,1],
 [1,16,1],
 [1,8,2],
 [1,4,4],
 [1,2,8],
 [1,1,16]
]; 
///
property var scales:[
 [60, 62, 64, 65, 67, 69, 71, 72], // :C4 Major
 [60, 62, 63, 65, 67, 68, 70, 72], // :C4 Minor
 [60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72],//:C4,  :chromatic
// 73 scale possibilities  ### extra ")" is error
// combo box isn't good for doing them all
// [60, 62, 63, 65, 67, 68, 70, 72],//:C4,  :aeolian
// [60, 61, 64, 65, 67, 69, 70, 72],//:C4,  :ahirbhairav
// [60, 63, 64, 67, 68, 71, 72)],//:C4,  :augmented
// [60, 61, 64, 65, 68, 69, 72)],//:C4,  :augmented2
// [60, 62, 64, 65, 67, 68, 70, 72)],//:C4,  :bartok
// [60, 61, 64, 65, 67, 68, 71, 72)],//:C4,  :bhairav
// [60, 62, 63, 64, 67, 69, 72)],//:C4,  :blues_major
// [60, 63, 65, 66, 67, 70, 72)],//:C4,  :blues_minor
// [60, 64, 66, 67, 71, 72)],//:C4,  :chinese
// [60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72)],//:C4,  :chromatic
// [60, 62, 64, 65, 67, 69, 71, 72)],//:C4,  :diatonic
// [60, 61, 63, 64, 66, 67, 69, 70, 72)],//:C4,  :diminished
// [60, 62, 63, 65, 66, 68, 69, 71, 72)],//:C4,  :diminished2
// [60, 62, 63, 65, 67, 69, 70, 72)],//:C4,  :dorian
// [60, 62, 65, 67, 70, 72)],//:C4,  :egyptian
// [60, 61, 64, 66, 68, 70, 71, 72)],//:C4,  :enigmatic
// [60, 62, 64, 67, 69, 72)],//:C4,  :gong
// [60, 62, 64, 65, 67, 68, 71, 72)],//:C4,  :harmonic_major
// [60, 62, 63, 65, 67, 68, 71, 72)],//:C4,  :harmonic_minor
// [60, 63, 65, 67, 68, 70, 72)],//:C4,  :hex_aeolian
// [60, 62, 63, 65, 67, 70, 72)],//:C4,  :hex_dorian
// [60, 62, 64, 65, 67, 69, 72)],//:C4,  :hex_major6
// [60, 62, 64, 67, 69, 71, 72)],//:C4,  :hex_major7
// [60, 61, 63, 65, 68, 70, 72)],//:C4,  :hex_phrygian
// [60, 62, 65, 67, 69, 70, 72)],//:C4,  :hex_sus
// [60, 62, 64, 65, 67, 68, 70, 72)],//:C4,  :hindu
// [60, 62, 63, 67, 68, 72)],//:C4,  :hirajoshi
// [60, 62, 63, 66, 67, 68, 71, 72)],//:C4,  :hungarian_minor
// [60, 64, 65, 67, 70, 72)],//:C4,  :indian
// [60, 62, 64, 65, 67, 69, 71, 72)],//:C4,  :ionian
// [60, 61, 65, 66, 70, 72)],//:C4,  :iwato
// [60, 63, 65, 68, 70, 72)],//:C4,  :jiao
// [60, 62, 63, 67, 69, 72)],//:C4,  :kumoi
// [60, 62, 64, 66, 68, 70, 71, 72)],//:C4,  :leading_whole
// [60, 61, 63, 65, 66, 68, 70, 72)],//:C4,  :locrian
// [60, 62, 64, 65, 66, 68, 70, 72)],//:C4,  :locrian_major
// [60, 62, 64, 66, 67, 69, 71, 72)],//:C4,  :lydian
// [60, 62, 64, 66, 67, 68, 70, 72)],//:C4,  :lydian_minor
// [60, 62, 64, 65, 67, 69, 71, 72)],//:C4,  :major
// [60, 62, 64, 67, 69, 72)],//:C4,  :major_pentatonic
// [60, 61, 64, 66, 67, 69, 71, 72)],//:C4,  :marva
// [60, 62, 64, 65, 67, 68, 70, 72)],//:C4,  :melodic_major
// [60, 62, 63, 65, 67, 69, 71, 72)],//:C4,  :melodic_minor
// [60, 62, 63, 65, 67, 69, 71, 72)],//:C4,  :melodic_minor_asc
// [60, 62, 63, 65, 67, 68, 70, 72)],//:C4,  :melodic_minor_desc
// [60, 62, 64, 66, 68, 70, 72)],//:C4,  :messiaen1
// [60, 61, 63, 64, 66, 67, 69, 70, 72)],//:C4,  :messiaen2
// [60, 62, 63, 64, 66, 67, 68, 70, 71, 72)],//:C4,  :messiaen3
// [60, 61, 62, 65, 66, 67, 68, 71, 72)],//:C4,  :messiaen4
// [60, 61, 65, 66, 67, 71, 72)],//:C4,  :messiaen5
// [60, 62, 64, 65, 66, 68, 70, 71, 72)],//:C4,  :messiaen6
// [60, 61, 62, 63, 65, 66, 67, 68, 69, 71, 72)],//:C4,  :messiaen7
// [60, 62, 63, 65, 67, 68, 70, 72)],//:C4,  :minor
// [60, 63, 65, 67, 70, 72)],//:C4,  :minor_pentatonic
// [60, 62, 64, 65, 67, 69, 70, 72)],//:C4,  :mixolydian
// [60, 61, 63, 65, 67, 69, 71, 72)],//:C4,  :neapolitan_major
// [60, 61, 63, 65, 67, 68, 71, 72)],//:C4,  :neapolitan_minor
// [60, 62, 63, 65, 66, 68, 69, 71, 72)],//:C4,  :octatonic
// [60, 61, 63, 67, 68, 72)],//:C4,  :pelog
// [60, 61, 63, 65, 67, 68, 70, 72)],//:C4,  :phrygian
// [60, 62, 64, 66, 71, 72)],//:C4,  :prometheus
// [60, 61, 64, 66, 67, 68, 71, 72)],//:C4,  :purvi
// [60, 62, 65, 67, 69, 72)],//:C4,  :ritusen
// [60, 62, 63, 66, 67, 69, 70, 72)],//:C4,  :romanian_minor
// [60, 61, 64, 67, 69, 72)],//:C4,  :scriabin
// [60, 62, 65, 67, 70, 72)],//:C4,  :shang
// [60, 61, 64, 65, 67, 68, 70, 72)],//:C4,  :spanish
// [60, 61, 63, 64, 66, 68, 70, 72)],//:C4,  :super_locrian
// [60, 61, 63, 66, 67, 68, 71, 72],//:C4,  :todi
// [60, 62, 64, 66, 68, 70, 72],//:C4,  :whole
// [60, 62, 64, 66, 68, 70, 72],//:C4,  :whole_tone
// [60, 63, 65, 67, 70, 72],//:C4,  :yu
// [60, 62, 65, 67, 69, 72],//:C4,  :zhi
];//end scales table
 // Apply the given function to all notes in selection
 // or, if nothing is selected, in the entire score

 function createscale() {
  var nt=[1,1];
  nt=notetime[getNoteType()];
  var i=0;
  var C4major=[60, 62, 64, 65, 67, 69, 71, 72];
  var oct=getOctave();
  var oneflag=0;
  var cscore=curScore;
  cscore.startCmd();
  var cursor = curScore.newCursor();
  cursor.rewind(1);
  var startStaff;
  var endStaff;
  var endTick;
  var fullScore = false;
  if (!cursor.segment) { // no selection
   fullScore = true;
   startStaff = 0; // start with 1st staff
   endStaff = curScore.nstaves - 1; // and end with last
  } else {
   startStaff = cursor.staffIdx;
   cursor.rewind(2);
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
  var staff=startStaff
  var voice=0;
  cursor.rewind(1); // sets voice to 0
  cursor.voice = voice; //voice has to be set after goTo
  cursor.staffIdx = staff; //staff 0=treble, 1=bass
  if (fullScore)cursor.rewind(0) // if no selection, beginning of score
///xxx
  var st=getScaleType();
  var pn=getPivotNote()
  var slen=scales[st].length
///xxx
  while (i<slen){
   cursor.setDuration(nt[0],nt[1]); 
   cursor.addNote(scales[st][i]+pn+(oct-3)*12);
   i++;
  }//end while
  i=slen-1;
  while (i> -1){
   cursor.setDuration(nt[0],nt[1]); 
   cursor.addNote(scales[st][i]+pn+(oct-3)*12);
   i--;
  }//end while
cursor.next();
//  cursor.rewind(0);
  cscore.endCmd();
  Qt.quit();
 }//end createscale

 onRun: {
  console.log("hello");
  if (typeof curScore === 'undefined')Qt.quit();
 }//end onRun

// rectangle for display and the widgets inside
Rectangle {
 color: "lightgrey"
 anchors.fill: parent
 GridLayout {
  columns: 2
  anchors.fill: parent
  anchors.margins: 10
//////////////
   Label {
   text: "Scale Type"
  }//end label

  ComboBox {
   id: scaleType
   width:100
   Layout.fillWidth:	true
   model: ListModel {
    id: scaleTypeList
// note values are index into scales array
    ListElement { text: "Major";  note: 0;  }
    ListElement { text: "Minor"; note: 1;  }
    ListElement { text: "Chromatic"; note: 2;  }
  }//end listmodel
    currentIndex: 0
   style: ComboBoxStyle {
    font.family: 'MScore Text'
    font.pointSize: 12
   }//end style
  }// end combobox
//////////////
 Label {
   text: "Scale Note"
  }//end label

  ComboBox {
   id: pivotNote
   Layout.fillWidth:	true
   width:100
   model: ListModel {
    id: pivotNoteList
    ListElement { text: "G";  note: 7;  }
    ListElement { text: "G♯"; note: 8;  }
    ListElement { text: "A";  note: 9;  }
    ListElement { text: "B♭"; note: 10; }
    ListElement { text: "B";  note: 11; }
    ListElement { text: "C";  note: 0;  }
    ListElement { text: "C♯"; note: 1;  }
    ListElement { text: "D";  note: 2;  }
    ListElement { text: "E♭"; note: 3;  }
    ListElement { text: "E";  note: 4;  }
    ListElement { text: "F";  note: 5;  }
    ListElement { text: "F♯"; note: 6;  }
   }//end listmodel
   currentIndex: 5
   style: ComboBoxStyle {
    font.family: 'MScore Text'
    font.pointSize: 12
   }//end style
  }// end combobox
//////////////
  Label {
   text: "Octave"
  }//end label

ComboBox {
   id: octave
   Layout.fillWidth:	true
   model: ListModel {
    id: octaveList
    ListElement { text: "1";  note: 0;  }
    ListElement { text: "2"; note: 1;  }
    ListElement { text: "3";  note: 2;  }
    ListElement { text: "4";  note: 3;  }
    ListElement { text: "5";  note: 4;  }
    ListElement { text: "6"; note: 5;  }
    ListElement { text: "7";  note: 6;  }
    ListElement { text: "8"; note: 7;  }
    ListElement { text: "9"; note: 8;  }
    ListElement { text: "10"; note: 9;  }
  }//end listmode
   currentIndex: 3
   style: ComboBoxStyle {
    font.family: 'MScore Text'
    font.pointSize: 14
   }//end style
  }// end combobox
/////////////////////
  Label {
   text: "Note time"
  }//end label

  ComboBox {
   id: noteType
   Layout.fillWidth:	true
   model: ListModel {
    id: noteTypeList
    ListElement { text: "1/32";  note: 0;  }
    ListElement { text: "1/16"; note: 1;  }
    ListElement { text: "1/8";  note: 2;  }
    ListElement { text: "1/4";  note: 3;  }
    ListElement { text: "1/2";  note: 4;  }
    ListElement { text: "1"; note: 5;  }
   }//end listmode
   currentIndex: 2
   style: ComboBoxStyle {
    font.family: 'MScore Text'
    font.pointSize: 14
   }//end style
  }// end combobox
//////////
 Button {
  id: applyButton
  text: qsTranslate("PrefsDialogBase", "Apply")
   onClicked: {
    createscale()
    curScore.endCmd();
    Qt.quit()
   }//end onclicked
  }//end apply button
/////////////////////
  Button {
   id: cancelButton
   text: qsTranslate("PrefsDialogBase", "Cancel")
   onClicked: {
    Qt.quit()
   }//end on clicked
  }//end cancel button
 }//end?
 }//end?
/////
 MessageDialog {
  id: errorDialog
  title: "Error"
  text: ""
  onAccepted: {
   Qt.quit()
  }//end onaccepted
  visible: false
 }//end message dialog
}//end Musescore

