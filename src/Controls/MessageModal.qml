/*
    AniLibria - desktop client for the website anilibria.tv
    Copyright (C) 2020 Roman Vladimirov

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.12
import QtQuick.Controls 2.12

Popup {
    id: messagePopup
    property alias header: popupHeader.text
    property alias message: popupMessage.text
    property alias messageHeight: popupMessage.height
    property alias content: innerSlotContainer.children

    x: (window.width / 2) - (width / 2)
    y: (window.height / 2) - (height / 2)
    width: 450
    height: 150
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    Column {
        width: parent.width
        spacing: 10

        AccentText {
            id: popupHeader
            width: messagePopup.width - 20
            fontPointSize: 11
            font.bold: true
            elide: Text.ElideRight
        }

        Rectangle {
            color: "transparent"
            width: messagePopup.width - 20
            height: messagePopup.height - 40

            PlainText {
                id: popupMessage
                width: parent.width
                height: 60
                fontPointSize: 9
                wrapMode: Text.WordWrap
            }

            Rectangle {
                id: innerSlotContainer
                color: "transparent"
                anchors.top: popupMessage.bottom
                width: parent.width
                height: 30
            }
        }
    }
}
