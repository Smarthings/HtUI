import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T
import QtGraphicalEffects 1.0

import "."

T.Dialog {
    id: dialog

    property color color: Theme.background

    x: (window.width - width) /2
    y: 5

    background: Rectangle {
        id: background
        anchors.fill: parent
        color: Qt.rgba(dialog.color.r, dialog.color.g, dialog.color.b, 1)
        radius: 2

        FastBlur {
            id: fastBlur
            anchors.fill: parent
            radius: 80
            opacity: 0.3

            source: ShaderEffectSource {
                anchors.fill: parent
                sourceItem: window.contentItem
                sourceRect: Qt.rect(dialog.x, dialog.y, background.width, background.height)
            }
        }
    }

    header: Item {
        visible: title
        width: parent.width
        height: Theme.implicitHeightComponents

        Text {
            anchors.fill: parent

            text: dialog.title
            font.pixelSize: parent.height * 0.5
            font.bold: true

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }

    footer: DialogButtonBox {
        visible: count > 0
        height: Theme.implicitHeightComponents
    }
}
