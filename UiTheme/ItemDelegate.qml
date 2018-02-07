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
    rightPadding: 2
    leftPadding: 2

    property string subtext
    property string value
    property var leftIcon: null
    property var rightIcon: null
    property bool isItemMenu: false
    property color backgroundColor: Theme.delegate

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

                    Text {
                        width: parent.width
                        height: control.subtext? (parent.height - parent.children[1].height) * 0.8 : parent.height
                        font: control.font
                        color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text)
                        text: control.text
                        elide: Text.ElideRight
                        verticalAlignment: Qt.AlignVCenter
                        anchors.left: parent.left
                        anchors.leftMargin: control.padding
                    }

                    Text {
                        width: parent.width
                        visible: control.subtext
                        text: control.subtext
                        elide: Text.ElideRight
                        font.pixelSize: Theme.pixelSize * 0.75
                        color: !control.enabled? Theme.color50(Theme.textDisabled) : (control.down ? Theme.color50(Theme.text) : Theme.color50(Theme.text))
                        anchors.left: parent.left
                        anchors.leftMargin: control.padding
                    }
                }
            }

            Item {
                Layout.fillHeight: true
                Layout.preferredWidth: 100
                visible: control.value

                Text {
                    anchors.fill: parent
                    text: control.value
                    font.pixelSize: Theme.pixelSize * 0.75
                    color: !control.enabled? Theme.color50(Theme.textDisabled) : (control.down ? Theme.color50(Theme.text) : Theme.color50(Theme.text))
                    horizontalAlignment: Qt.AlignRight
                    verticalAlignment: Qt.AlignVCenter
                    anchors.right: parent.right
                    anchors.rightMargin: (_rightIcon.children[0])? 0 : control.padding
                    elide: Text.ElideRight
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
        color: control.highlighted || control.down ? Theme.delegatePressed : control.backgroundColor
    }

    Component.onCompleted: {
        if (control.leftIcon !== null)
            _leftIcon.data = control.leftIcon
        if (control.rightIcon !== null)
            _rightIcon.data = control.rightIcon

        if (control.rightIcon === null && control.isItemMenu)
        {
            var isItemMenuObj = Qt.createQmlObject("import QtQuick 2.9; import \".\"; Text { text: \"\uE315\"; anchors.fill: parent; anchors.topMargin: 6; horizontalAlignment: Qt.AlignRight; verticalAlignment: Qt.AlignVCenter; color: Theme.color50(Theme.text); font.pixelSize: 25}", _rightIcon);
        }
    }
}
