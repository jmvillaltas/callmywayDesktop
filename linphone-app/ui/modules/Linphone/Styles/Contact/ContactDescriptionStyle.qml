pragma Singleton
import QtQml 2.2
import QtQuick 2.7

import Units 1.0
import ColorsList 1.0

// =============================================================================

QtObject {
	property string sectionName: 'ContactDescription'
	property QtObject subtitle: QtObject {
		property color color: ColorsList.add(sectionName+'_subtitle', 'n').color
		property int pointSize: Units.dp * 10
		property int weight: Font.Normal
	}
	
	property QtObject title: QtObject {
		property color color: ColorsList.add(sectionName+'_title', 'j').color
		property int pointSize: Units.dp * 11
		property int weight: Font.Bold
		property QtObject status : QtObject{
			property color color : ColorsList.add(sectionName+'_status', 'g').color
			property int pointSize : Units.dp * 9
		}
	}
	
}
