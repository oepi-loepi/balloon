//
// Onkyoesp v1.0.7 by Oepi-Loepi
//

import QtQuick 2.1
import qb.components 1.0
import qb.base 1.0;

App {
	id: balloonApp

	property url tileUrl : "BalloonTile.qml"
	property url thumbnailIcon: "qrc:/tsc/onkyo-resize.png"

	property url balloonScreenUrl : "BalloonScreen.qml"
	property BalloonScreen balloonScreen

	function init() {
		registry.registerWidget("tile", tileUrl, this, null, {thumbLabel: qsTr("Balloon"), thumbIcon: thumbnailIcon, thumbCategory: "general", thumbWeight: 30, baseTileWeight: 10, thumbIconVAlignment: "center"});
        	registry.registerWidget("screen", balloonScreenUrl, this, "balloonScreen");
	}

}
