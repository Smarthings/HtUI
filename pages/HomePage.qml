import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    color: Theme.background
    property var headerPage: HeaderDefault {}

    Flickable {
        id: flickable
        anchors.fill: parent
        contentHeight: root.implicitHeight

        Pane {
            id: root
            anchors.fill: parent

            Column {
                width: parent.width
                height: parent.height
                spacing: 20

                Text {
                    width: parent.width
                    text: qsTr("Desenvolvido em")
                    horizontalAlignment: Qt.AlignRight
                }

                GroupBox {
                    width: parent.width
                    padding: 10
                    radius: 5

                    Image {
                        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
                        width: parent.width
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Button {
                    text: "Open Modal"
                    color: Theme.accent

                    onClicked: popup.open()
                }
            }
        }
    }
}
