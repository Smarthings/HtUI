import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2
import QtQuick.Templates 2.2 as T
import QtQuick.Layouts 1.3

import "./"

T.ItemDelegate {
    id: control

    font.pixelSize: Theme.pixelSize

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Theme.implicitHeightComponents
    baselineOffset: contentItem.y + contentItem.baselineOffset

    padding: 10
    spacing: 10

    property string subtext
    property string value
    property var leftIcon: null
    property var rightIcon: null
    property bool isItemMenu: false

    contentItem: Item {
        anchors.fill: parent

        RowLayout {
            anchors.fill: parent
            spacing: 2

            anchors.leftMargin: parent.parent.leftPadding
            anchors.rightMargin: parent.parent.rightPadding

            Item {
                id: _leftIcon
                visible: control.leftIcon !== null
                Layout.fillHeight: true
                Layout.preferredWidth: 30
            }

            Item{
                Layout.fillHeight: true
                Layout.fillWidth: true

                Column {
                    anchors.fill: parent
                    anchors.topMargin: control.subtext? parent.parent.parent.parent.topPadding /2 : 0

                    Text {
                        width: parent.width
                        height: control.subtext? font.pixelSize : parent.height
                        font: control.font
                        color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text)
                        text: control.text
                        elide: Text.ElideRight
                        verticalAlignment: Qt.AlignVCenter
                    }

                    Text {
                        width: parent.width
                        visible: control.subtext
                        text: control.subtext
                        elide: Text.ElideRight
                        font.pixelSize: Theme.pixelSize * 0.75
                        color: !control.enabled? Theme.color50(Theme.textDisabled) : (control.down ? Theme.color50(Theme.text) : Theme.color50(Theme.text))
                    }
                }
            }

            Item {
                Layout.fillHeight: true
                Layout.preferredWidth: 50
                visible: control.value

                Text {
                    anchors.fill: parent
                    text: control.value
                    font.pixelSize: Theme.pixelSize * 0.75
                    color: !control.enabled? Theme.color50(Theme.textDisabled) : (control.down ? Theme.color50(Theme.text) : Theme.color50(Theme.text))
                    horizontalAlignment: Qt.AlignRight
                    verticalAlignment: Qt.AlignVCenter
                }
            }

            Item {
                id: _rightIcon
                visible: isItemMenu
                Layout.fillHeight: true
                Layout.preferredWidth: 30
            }
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: Theme.implicitHeightComponents
        visible: control.down || control.highlighted || control.visualFocus
        color: control.highlighted || control.down ? Theme.delegatePressed : Theme.delegate
    }

    Component.onCompleted: {
        if (control.leftIcon !== null)
            _leftIcon.data = control.leftIcon
        if (control.rightIcon !== null)
            _rightIcon.data = control.rightIcon

        if (control.rightIcon === null && control.isItemMenu)
        {
            var isItemMenuObj = Qt.createQmlObject("import QtQuick 2.9; import \".\"; Text {anchors.fill: parent; text: \"\uE315\"; color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text);font.pixelSize: parent.height; anchors.right: parent.right}", _rightIcon);
        }
    }
}
