import QtQuick 2.7
import QtQuick.Controls 2.2

import Common 1.0
import Common.Styles 1.0

// =============================================================================

Button {
  id: button

  property alias backgroundColor: background.color
  property alias radius: background.radius
  property int capitalization

  background: Rectangle {
    id: background

    color: button.down
      ? SmallButtonStyle.background.color.pressed
      : (button.hovered
         ? SmallButtonStyle.background.color.hovered
         : SmallButtonStyle.background.color.normal
        )
    implicitHeight: SmallButtonStyle.background.height
    radius: SmallButtonStyle.background.radius
  }
  contentItem: Text {
    color: SmallButtonStyle.text.color
    font.pointSize: SmallButtonStyle.text.pointSize
    font.weight: Font.Bold
    font.capitalization: button.capitalization
    horizontalAlignment: Text.AlignHCenter
    text: button.text
    verticalAlignment: Text.AlignVCenter
    leftPadding: SmallButtonStyle.leftPadding
    rightPadding: SmallButtonStyle.rightPadding
    
  }
  hoverEnabled: true
  MouseArea {
    id: mouseArea
    anchors.fill: parent
    onPressed:  mouse.accepted = false
  }
}
