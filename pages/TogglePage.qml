import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    width: parent.width
    height: window.height * 0.92

    property int header_height: 0
    property string titleHeader: qsTr("Toggle")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
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

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                title: "Delegates"

                Column {
                    width: parent.width

                    SwitchDelegate {
                        width: parent.width
                        text: "Switch"

                        BorderBottom {}
                    }

                    CheckDelegate {
                        width: parent.width
                        text: "Checkbox"
                        BorderBottom {}
                    }

                    RadioDelegate {
                        width: parent.width
                        text: "Radio button"
                    }
                }
            }
        }
    }
}
