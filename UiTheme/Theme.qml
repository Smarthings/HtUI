pragma Singleton
import QtQuick 2.9
import Qt.labs.settings 1.0

Item {
    property bool dark: false
    property color accent: blue

    property color background: dark? darkBackground : lightBackground
    property color view: dark? darkView : lightView
    property color text: dark? darkText : lightText
    property color textComponents: dark? darkTextComponents : lightTextComponents
    property color textComponentsFocus: dark? darkTextComponentsFocus : lightTextComponentsFocus
    property color textDisabled: dark? darkTextDisabled : lightTextDisabled
    property color inverseText: dark? darkInverseText : lightInverseText
    property color border: dark? darkBorder : lightBorder
    property color borderFocus: dark? darkBorderFocus : lightBorderFocus
    property color components: dark? darkComponents : lightComponents
    property color componentsBorder: dark? darkComponentsBorder : lightComponentsBorder
    property color componentsDarker: dark? darkComponentsDarker : lightComponentsDarker
    property color componentsBorderDarker: dark? darkComponentsBorderDarker : lightComponentsBorderDarker
    property color delegate: dark? darkDelegate : lightDelegate
    property color delegatePressed: dark? darkDelegatePressed : lightDelegatePressed

    property color primary: grey
    property color info: dark? tealblue : blue
    property color alert: orange
    property color warning: red
    property color error: red

    readonly property color darkBackground: "#0d0d0d"
    readonly property color darkView: "#1B1B1B"
    readonly property color darkText: "#FFF"
    readonly property color darkTextComponents: "#8E8E93"
    readonly property color darkTextComponentsFocus: "#F9F9F9"
    readonly property color darkTextDisabled: "#DFDFE1"
    readonly property color darkInverseText: "#FFF"
    readonly property color darkBorder: "#8E8E93"
    readonly property color darkBorderFocus: "#F9F9F9"
    readonly property color darkComponents: "#2b2b2c"
    readonly property color darkComponentsBorder: "#3A3A3A"
    readonly property color darkComponentsDarker: "#0d0d0d"
    readonly property color darkComponentsBorderDarker: "#0d0d0d"
    readonly property color darkDelegate: "transparent"
    readonly property color darkDelegatePressed: "#202020"

    readonly property color lightBackground: "#DFDFE1"
    readonly property color lightView: "#F9F9F9"
    readonly property color lightText: "#000"
    readonly property color lightTextComponents: "#8E8E93"
    readonly property color lightTextComponentsFocus: "#66666A"
    readonly property color lightTextDisabled: "#666"
    readonly property color lightInverseText: "#FFF"
    readonly property color lightBorder: lightgrey
    readonly property color lightBorderFocus: grey
    readonly property color lightComponents: "#F9F9F9"
    readonly property color lightComponentsBorder: "#dfdfe1"
    readonly property color lightComponentsDarker: lightgrey
    readonly property color lightComponentsBorderDarker: lightgrey
    readonly property color lightDelegate: "transparent"
    readonly property color lightDelegatePressed: "#E9E9E9"

    readonly property color lighter: "#F9F9F9"
    readonly property color grey: "#8E8E93"
    readonly property color lightgrey: "#CECED2"
    readonly property color blue: "#007AFF"
    readonly property color tealblue: "#5AC8FA"
    readonly property color green: "#4CD964"
    readonly property color yellow: "#FFCC00"
    readonly property color red: "#FF3B30"
    readonly property color orange: "#FF9500"
    readonly property color purple: "#5856D6"
    readonly property color pink: "#FF2D55"

    readonly property int pixelSize: 14

    function color50(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.5);
    }
    function clicked(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.9);
    }
    function pressed(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.9);
    }
    function checked(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.6);
    }
    function focus(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.80);
    }
    function focusLight(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.75);
    }
    function focusPressed(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.70);
    }
    function checkedFocus(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.75);
    }
    function checkedPressed(color)
    {
        return Qt.rgba(color.r, color.g, color.b, 0.70);
    }
}
