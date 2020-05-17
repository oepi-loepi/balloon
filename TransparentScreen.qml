import QtQuick 2.1

import qb.base 1.0

/**
 * The base class for any screen.
 * Provides default onShow & onHide transitions.
 */
Widget {
	property string kpiPrefix
	property string identifier
	property string screenTitle
	property url screenTitleIconUrl
	property bool inNavigationStack: false
	property bool disableAutoPageViewLogging: false

	function show(args) {
		stage.openFullscreen(identifier, args);
	}

	function hide() {
		stage.navigateBack();
	}

	anchors.fill: parent

	Behavior on scale {
		enabled:  globals.screenTransitionEnabled;
		NumberAnimation {duration: globals.screenTransitionDuration; easing.type: Easing.OutCubic}
	}
}
