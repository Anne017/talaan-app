import QtQuick 2.4
import Ubuntu.Components 1.3

ListItem {
    id: root

    //Public APIs
    property alias titleText: listItemLayout.title
    property alias subText: listItemLayout.subtitle
    property string iconName

    width: parent.width
    highlightColor: switch(settings.currentTheme){
                    case "Default":
                        "#2D371300"
                        break;
                    case "Ambiance":
                        theme.palette.highlighted.background
                        break;
                    case "SuruDark":
                        theme.palette.highlighted.background
                        break;
                    default:
                        "#2D371300"
                    }

    ListItemLayout {
        id: listItemLayout
        title.color: switch (settings.currentTheme) {
                     case "Default":
                         theme.palette.normal.background
                         break
                     case "Ambiance":
                         theme.palette.normal.backgroundText
                         break
                     case "SuruDark":
                         theme.palette.normal.backgroundText
                         break
                     default:
                         theme.palette.normal.background
                     }
        subtitle.color: switch (settings.currentTheme) {
                        case "Default":
                            theme.palette.normal.background
                            break
                        case "Ambiance":
                            theme.palette.normal.backgroundText
                            break
                        case "SuruDark":
                            theme.palette.normal.backgroundText
                            break
                        default:
                            theme.palette.normal.background
                        }
        Icon {
            name: "next"
            SlotsLayout.position: SlotsLayout.Trailing
            color: switch (settings.currentTheme) {
                   case "Default":
                       UbuntuColors.jet
                       break
                   case "Ambiance":
                       theme.palette.normal.backgroundText
                       break
                   case "SuruDark":
                       theme.palette.normal.backgroundText
                       break
                   default:
                       UbuntuColors.jet
                   }
            width: units.gu(3)
        }
        Icon {
            name: iconName
            SlotsLayout.position: SlotsLayout.Leading
            color: switch (settings.currentTheme) {
                   case "Default":
                       theme.palette.normal.overlay
                       break
                   case "Ambiance":
                       theme.palette.normal.backgroundText
                       break
                   case "SuruDark":
                       theme.palette.normal.backgroundText
                       break
                   default:
                       theme.palette.normal.overlay
                   }
            width: units.gu(3)
            visible: iconName !== "" ? true : false
        }
    }
}
