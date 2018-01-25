import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

RadioDelegate {
    id: control

    font.pixelSize: Theme.pixelSize

    implicitHeight: Theme.implicitHeightComponents
    padding: 10
    spacing: 10

    contentItem: Text {
        leftPadding: control.mirrored ? control.indicator.width + control.spacing : 0
        rightPadding: !control.mirrored ? control.indicator.width + control.spacing : 0

        text: control.text
        font: control.font
        color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text)
        elide: Text.ElideRight
        visible: control.text
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    indicator: RadioIndicator {
        x: control.mirrored ? control.leftPadding : control.width - width - control.rightPadding
        y: control.topPadding + (control.availableHeight - height) / 2

        control: control
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        visible: control.down || control.highlighted
        color: control.down ? Theme.delegatePressed : Theme.delegate
    }
}