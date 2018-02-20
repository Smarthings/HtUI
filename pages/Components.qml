import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    id: page
    property string titleHeader: qsTr("Components")
    property int page_height: height - header.height

    color: Theme.background
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5

            ToolButton {
                text: stackview_components.depth > 1? "\uE314" : "\uE5D2"
                font.family: material_icons.name
                bottomPadding: -4
                radius: width /2
                font.pixelSize: 24

                onClicked: stackview_components.depth > 1? stackview_components.pop() : drawer.open()
            }

            Text {
                Layout.fillWidth: true
                padding: 10
                verticalAlignment: Text.AlignVCenter

                text: titleHeader
                font.pixelSize: 20
            }
        }
    }

    StackView {
        id: stackview_components
        anchors.fill: parent

        initialItem: Pane {
            width: parent.width
            height: window.height - header.height * 1.1

            Column {
                width: parent.width
                height: parent.height
                spacing: 20

                GroupBox {
                    width: parent.width
                    radius: 5
                    title: "Componentes"
                    autoAlign: true
                    autoAlignBorder: true

                    ItemDelegate {
                        width: parent.width
                        text: "Inputs"
                        isItemMenu: true

                        onClicked: stackview_components.push("qrc:/pages/InputsPage.qml", {"header_height": header.height})
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Toggle"
                        isItemMenu: true

                        onClicked: stackview_components.push("qrc:/pages/TogglePage.qml", {"header_height": header.height})
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Sliders"
                        isItemMenu: true

                        onClicked: stackview_components.push("qrc:/pages/SlidersPage.qml", {"header_height": header.height})
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Buttons"
                        isItemMenu: true

                        onClicked: stackview_components.push("qrc:/pages/ButtonsPage.qml", {"header_height": header.height})
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Delegates"
                        isItemMenu: true

                        onClicked: stackview_components.push("qrc:/pages/DelegatesPage.qml", {"header_height": header.height})
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Dialogs"
                        isItemMenu: true
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Teste"
                        isItemMenu: true
                        onClicked: {
                            stackview_components.push("qrc:/pages/Teste.qml", {"header_height": header.height});
                        }
                    }
                }
            }
        }

        onCurrentItemChanged: {
            titleHeader = stackview_components.currentItem.titleHeader? stackview_components.currentItem.titleHeader : qsTr("Components")
        }
    }
}
