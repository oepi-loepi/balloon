//balloon by oepi-loepi

import QtQuick 2.1
import qb.components 1.0
import BasicUIControls 1.0;
//import QtQuick.Controls 1.3

Screen {
	id: balloonScreen
	screenTitle: "Balloon!"
	opacity: 1
	property int butHeight : 50

	onShown: {
		//screenStateController.screenColorDimmedIsReachable = false
	}

	function randomNumber(from, to) {
        	return Math.floor(Math.random() * (to - from + 1) + from);
    	}


	Rectangle {
		id: game
		color: "transparent"
		width: parent.width; height: parent.height  		
		anchors {
			top: sparent.top
			left: parent.left
			topMargin:0
			leftMargin: 0
			}

		Timer {
			interval: 1000
			repeat: true
			running: true
			onTriggered: {
				var component = Qt.createComponent("Balloon.qml");
				var balloon = component.createObject(game);
				balloon.x = randomNumber(0, parent.width);
				balloon.y = parent.height;
			}
		}

	}

}