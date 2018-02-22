import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

import "./UiTheme/"
import "./pages/"

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 618

    title: qsTr("HtUI")
    font: ubuntu.name

    color: Theme.background

    Settings {
        id: settings

        property bool dark: false
        onDarkChanged: Theme.dark = dark

        property color accent: Theme.blue
        onAccentChanged: Theme.accent = accent
    }

    property var headerTitle: ["HtUI"]
    onHeaderTitleChanged: {
        titlePage = headerTitle[(headerTitle.length -1)]
    }

    property string titlePage
    header: HeaderDefault {}

    Drawer {
        id: drawer
        width: (parent.width < 350)? parent.width : (((parent.width /3) * 2 > 400)? 400 : (parent.width /3) * 2.2)
        height: parent.height
        clip: true

        Page {
            anchors.fill: parent

            ColumnLayout {
                anchors.fill: parent

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 150
                    color: Theme.accent

                    ColumnLayout {
                        anchors.fill: parent
                        anchors.margins: 10

                        Text {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            text: "HtUI - kit"
                            font.pixelSize: 32
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                        }
                        Text {
                            Layout.fillWidth: true
                            text: "HomeThings UI theme"
                            horizontalAlignment: Qt.AlignRight
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ListView {
                        id: listMenu
                        anchors.fill: parent
                        clip: true
                        currentIndex: -1

                        model: [
                            {'title': 'Configurações', 'icon': "\uE8B8", 'source': 'qrc:/pages/SettingsPage.qml'},
                            {'title': 'Aparência', 'icon': "\uE3AE", 'source': 'qrc:/pages/ThemePage.qml'},
                            {'title': 'Components', 'icon': "\uE86F", 'source': 'qrc:/pages/Components.qml'},
                            //{'title': 'Mensagens de erro', 'icon': "\uE868", 'source': 'qrc:/pages/LogPage.qml'}
                        ]

                        delegate: ItemDelegate {
                            width: parent.width
                            implicitHeight: Theme.implicitHeightComponents * 1.2
                            text: modelData.title
                            isItemMenu: true
                            highlighted: listMenu.currentIndex === index

                            leftIcon: Text {
                                text: modelData.icon
                                anchors.fill: parent
                                color: Theme.text
                                font.pixelSize: 18
                                horizontalAlignment: Qt.AlignHCenter
                                verticalAlignment: Qt.AlignVCenter
                            }
                            BorderBottom {}

                            onClicked: {
                                stackView.push(modelData.source)
                                //window.headerTitle.push(modelData.title)
                                listMenu.currentIndex = index
                                drawer.close()
                            }
                        }
                    }
                }

                GroupBox {
                    Layout.fillWidth: true
                    backgroundColor: "transparent"
                    autoAlign: true
                    autoAlignBorder: true
                    borderTop: true

                    ItemDelegate {
                        width: parent.width
                        implicitHeight: Theme.implicitHeightComponents * 1.2
                        text: qsTr("Sobre")
                        isItemMenu: true

                        leftIcon: Text {
                            text: "\uE887"
                            anchors.fill: parent
                            color: Theme.text
                            font.pixelSize: 18
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                        }
                    }

                    ItemDelegate {
                        width: parent.width
                        implicitHeight: Theme.implicitHeightComponents * 1.2
                        text: qsTr("Desconectar")
                        isItemMenu: true

                        leftIcon: Text {
                            text: "\uE879"
                            anchors.fill: parent
                            color: Theme.text
                            font.pixelSize: 18
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                        }
                    }
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: HomePage {}

        onDepthChanged: {
            if (depth === 1)
                listMenu.currentIndex = -1
        }
        onCurrentItemChanged: {
            titlePage = stackView.currentItem.titleHeader? stackView.currentItem.titleHeader : "HtUI"
            header.visible = !stackView.currentItem.header
        }
    }

    Dialog {
        id: popup
        modal: true
        blur: true

        title: "Teste modal"
        width: 300
        height: 300
    }

    FontLoader {
        id: ubuntu
        name: "Ubuntu"
        source: "qrc:/UiTheme/fonts/Ubuntu.ttf"
    }

    FontLoader {
        id: material_icons
        name: "Ubuntu"
        source: "qrc:/UiTheme/fonts/MaterialIcons.ttf"
    }
}
