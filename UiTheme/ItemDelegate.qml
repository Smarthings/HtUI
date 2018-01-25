import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

ItemDelegate {
    id: control

    font.pixelSize: Theme.pixelSize

    implicitHeight: Theme.implicitHeightComponents
    padding: 10
    spacing: 10

    contentItem: Text {
        text: control.text
        font: control.font
        color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text)
        elide: Text.ElideRight
        visible: control.text
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        visible: control.down || control.highlighted || control.visualFocus
        color: control.highlighted || control.down ? Theme.delegatePressed : Theme.delegate
    }
}