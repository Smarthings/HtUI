import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

import "./UiTheme/"

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 618
    title: qsTr("HtUI")

    Settings {
        id: settings

        property bool dark: false
        onDarkChanged: Theme.dark = dark

        property color accent: Theme.blue
        onAccentChanged: Theme.accent = accent
    }

    /*Component.onCompleted: {
        Theme.accent = Theme.blue
    }*/

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            Text {
                Layout.fillWidth: true
                padding: 10
                verticalAlignment: Text.AlignVCenter

                text: "HtUI kit"
                font.pixelSize: 20
                font.bold: true
            }

            RoundButton {
                text: "Tema"
                Layout.margins: 5
                color: Theme.accent

                onClicked: dialog_theme.open()
            }
        }
    }

    StackView {
        anchors.fill: parent
        initialItem: Page {
            clip: true
            margins: 0
            anchors.fill: parent
            color: Theme.background

            Column {
                width: parent.width
                height: parent.height + 30
                spacing: 30

                Item {
                    width: parent.width
                    height: 1
                }

                Frame {
                    width: parent.width
                    padding: 1
                    radius: 5

                    Column {
                        width: parent.width

                        Switch {
                            width: parent.width
                            text: "Switch"

                            BorderBottom {}
                        }

                        CheckBox {
                            width: parent.width
                            text: "Checkbox"
                            BorderBottom {}
                        }

                        RadioButton {
                            width: parent.width
                            text: "Radio button"
                        }
                    }
                }

                Frame {
                    width: parent.width
                    radius: 5

                    Column {
                        width: parent.width

                        SwitchDelegate {
                            width: parent.width
                            text: "Switch Delegate"

                            BorderBottom {}
                        }

                        CheckDelegate {
                            width: parent.width
                            text: "CheckDelegate"
                            BorderBottom {}
                        }

                        RadioDelegate {
                            width: parent.width
                            text: "Radio delegate"
                            BorderBottom {}
                        }

                        ItemDelegate {
                            width: parent.width
                            text: "Item Delegate"
                        }
                    }
                }

                Frame {
                    width: parent.width
                    padding: 10
                    radius: 5
                    border: true

                    Column {
                        width: parent.width
                        spacing: 5

                        TextField {
                            width: parent.width
                            placeholderText: "Teste"
                            darker: true
                        }

                        TextField {
                            width: parent.width
                            placeholderText: "Teste"
                        }

                        TextField {
                            width: parent.width
                            placeholderText: "Teste"
                            flat: true
                        }

                        ComboBox {
                            width: parent.width
                            model: ["Primeiro", "Segundo", "Terceiro", "Quarto"]
                        }
                    }
                }

                Frame {
                    width: parent.width
                    padding: 10
                    radius: 5

                    Column {
                        width: parent.width
                        spacing: 10

                        Slider {
                            width: parent.width
                        }

                        Slider {
                            orientation: Qt.Vertical
                        }
                    }
                }

                Frame {
                    width: parent.width
                    padding: 10
                    radius: 5
                    border: true

                    Row {
                        width: parent.width

                        Button {
                            text: "Open Dialog"
                            color: Theme.blue
                            textStyle.color: Theme.lighter

                            onClicked: dialog.open()
                        }

                        Button {
                            text: "Width/Height Display"
                            color: Theme.blue
                            flat: true

                            onClicked: teste.open()
                        }
                    }
                }

                Frame {
                    width: parent.width
                    padding: 10
                    radius: 5

                    GridLayout {
                        width: parent.width
                        columnSpacing: 5
                        rowSpacing: 5
                        columns: 3

                        Button {
                            text: "lighter"
                            color: Theme.lighter
                        }

                        Button {
                            text: "grey"
                            color: Theme.grey
                            textStyle.color: "#fff"
                        }

                        Button {
                            text: "blue"
                            color: Theme.blue
                            textStyle.color: "#fff"
                        }

                        Button {
                            text: "tealblue"
                            color: Theme.tealblue
                        }

                        Button {
                            text: "green"
                            color: Theme.green
                        }

                        Button {
                            text: "yellow"
                            color: Theme.yellow
                        }

                        Button {
                            text: "orange"
                            color: Theme.orange
                        }

                        Button {
                            text: "purple"
                            color: Theme.purple
                        }

                        Button {
                            text: "pink"
                            color: Theme.pink
                        }
                    }
                }

                Frame {
                    width: parent.width
                    padding: 10
                    radius: 5
                    backgroundColor: "transparent"

                    Image {
                        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
                        width: parent.width
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Column {
                    width: parent.width
                    height: 100
                    padding: 10

                    Frame {
                        width: parent.width - parent.padding * 2
                        padding: 1
                        radius: 5

                        Column {
                            width: parent.width

                            Switch {
                                width: parent.width
                                text: "Switch"

                                BorderBottom {}
                            }

                            CheckBox {
                                width: parent.width
                                text: "Checkbox"
                                BorderBottom {}
                            }

                            RadioButton {
                                width: parent.width
                                text: "Radio button"
                            }
                        }
                    }
                }
            }
        }
    }

    Dialog {
        id: dialog
        width: 300
        height: 300
        y: 10
        modal: true

        title: "Título do Dialog"

        standardButtons: Dialog.Ok | Dialog.Cancel

        Frame {
            width: parent.width
            height: parent.height

            padding: 5
            radius: 3

            Page {
                anchors.fill: parent
                clip: true

                Column {
                    anchors.fill: parent
                    spacing: 5

                    Column {
                        width: parent.width

                        SwitchDelegate {
                            width: parent.width
                            text: "Switch Delegate"

                            BorderBottom {}
                        }

                        CheckDelegate {
                            width: parent.width
                            text: "CheckDelegate"
                            BorderBottom {}
                        }

                        RadioDelegate {
                            width: parent.width
                            text: "Radio delegate"
                            BorderBottom {}
                        }

                        ItemDelegate {
                            width: parent.width
                            text: "Item Delegate"
                        }
                    }
                }
            }
        }
    }

    Dialog {
        id: teste
        y: 10
        modal: true

        width: 300
        height: 100

        contentItem: Item {
            anchors.fill: parent

            Column {
                anchors.fill: parent
                spacing: 10

                Text {
                    text: "Width: " + window.width
                }

                Text {
                    text: "Height: " + window.height
                }
            }
        }
    }

    Dialog {
        id: dialog_theme
        y: 10
        modal: true

        width: 300
        height: 200
        padding: -10

        title: "Tema"
        standardButtons: Dialog.Close

        Frame {
            anchors.fill: parent
            padding: 0
            radius: 5
            backgroundColor: "transparent"

            Page {
                anchors.fill: parent
                clip: true
                padding: 10

                Frame {
                    width: parent.width
                    border: true
                    radius: 5
                    padding: 5

                    Column {
                        width: parent.width
                        spacing: 20

                        SwitchDelegate {
                            width: parent.width
                            text: "Dark"

                            checked: settings.dark
                            onClicked: settings.dark = checked

                            BorderBottom {}
                        }

                        ComboBox {
                            width: parent.width

                            model: [
                                "Lighter",
                                "Grey",
                                "LightGrey",
                                "Blue",
                                "Teal blue",
                                "Green",
                                "Yellow",
                                "Red",
                                "Orange",
                                "Purple",
                                "Pink"
                            ]

                            onCurrentIndexChanged: {
                                settings.accent = Theme.getColor(currentIndex);
                            }
                        }
                    }
                }
            }
        }
    }

}
