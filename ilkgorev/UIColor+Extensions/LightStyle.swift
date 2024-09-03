//
//  LightStyle.swift
//  ilkgorev
//
//  Created by Hasan Cihan Bilgin on 29.07.2024.
//

import UIKit

struct LightStyle {
    // MARK: - Core
    static var core_white: UIColor { return UIColor(customHex: "#FFFFFF") }
    static var core_black: UIColor { return UIColor(customHex: "#000000") }

    // MARK: - Backgrounds
    static var mobile_bg: UIColor { return UIColor(customHex: "#FFFFFF") }
    static var desktop_bg: UIColor { return UIColor(customHex: "#F8F8FC") }
    static var content_bg: UIColor { return UIColor(customHex: "#FFFFFF") }

    // MARK: - Container
    static var onWhite_container: UIColor { return UIColor(customHex: "#F8F8FC") }
    static var onGrey_container: UIColor { return UIColor(customHex: "#FFFFFF") }
    static var onBlue_container: UIColor { return UIColor(customHex: "#0F4295") }
    static var blue_container: UIColor { return UIColor(customHex: "#ECF3FD") }
    static var drawer_container: UIColor { return UIColor(customHex: "#FFFFFF") }

    // MARK: - Text
    static var text_blue: UIColor { return UIColor(customHex: "#155ED4") }
    static var text_primary: UIColor { return UIColor(customHex: "#191C24") }
    static var text_secondary: UIColor { return UIColor(customHex: "#4C556B") }
    static var text_tertiary: UIColor { return UIColor(customHex: "#7B869F") }
    static var text_disable: UIColor { return UIColor(customHex: "#959EB2") }
    static var sidemenu_selected_text: UIColor { return UIColor(customHex: "#155ED4") }

    // MARK: - TextOnBlueBackground
    static var text_blueBg_primary: UIColor { return UIColor(customHex: "#FFFFFF") }
    static var text_blueBg_secondary: UIColor { return UIColor(customHex: "#DAE7FB") }
    static var text_blueBG_tertiary: UIColor { return UIColor(customHex: "#B4CCF8") }

    // MARK: - Stroke
    static var stroke: UIColor { return UIColor(customHex: "#E9EAEF") }
    static var stroke_focus: UIColor { return UIColor(customHex: "#155ED4") }
    static var stroke_blueBg: UIColor { return UIColor(customHex: "#FFFFFF") }

    // MARK: - Divider
    static var divider: UIColor { return UIColor(customHex: "#07214A").withAlphaComponent(0.08) }

    // MARK: - Disable
    static var disable: UIColor { return UIColor(customHex: "#F5F6F9") }

    // MARK: - Overlay
    static var overlay_light: UIColor { return UIColor(customHex: "#FFFFFF").withAlphaComponent(0.12) }
    static var overlay_dark: UIColor { return UIColor(customHex: "#000000").withAlphaComponent(0.5) }

    // MARK: - Blue
    static var blue: UIColor { return UIColor(customHex: "#155ED4") }
    static var bg_blue: UIColor { return UIColor(customHex: "#ECF3FD") }

    // MARK: - Green
    static var green: UIColor { return UIColor(customHex: "#26BF66") }
    static var bg_green: UIColor { return UIColor(customHex: "#CFF2DE") }

    // MARK: - Red
    static var red: UIColor { return UIColor(customHex: "#E73F3F") }
    static var bg_red: UIColor { return UIColor(customHex: "#FDEDED") }

    // MARK: - Yellow
    static var yellow: UIColor { return UIColor(customHex: "#FFB700") }
    static var bg_yellow: UIColor { return UIColor(customHex: "#FEF5E0") }

    // MARK: - Orange
    static var orange: UIColor { return UIColor(customHex: "#FF7919") }
    static var bg_orange: UIColor { return UIColor(customHex: "#FFF1E7") }

    // MARK: - Component Colors
    static var button_bg: UIColor { return UIColor(customHex: "#155ED4") }
    static var button_stroke: UIColor { return UIColor(customHex: "#155ED4") }
    static var secondary_button_stroke: UIColor { return UIColor(customHex: "#155ED4") }
    static var button_text: UIColor { return UIColor(customHex: "#155ED4") }
    static var infobox_alert_bg: UIColor { return UIColor(customHex: "#FEF5E0") }
    static var infobox_info_bg: UIColor { return UIColor(customHex: "#ECF3FD") }
    static var toaster_success_bg: UIColor { return UIColor(customHex: "#26BF66") }
    static var toaster_info_bg: UIColor { return UIColor(customHex: "#191C24") }
    static var tooltip_bg: UIColor { return UIColor(customHex: "#191C24") }
    static var navigation_bg: UIColor { return UIColor(customHex: "#206DE9") }
    static var selected_tab_divider: UIColor { return UIColor(customHex: "#00C7E0") }
    static var avatar_bg: UIColor { return UIColor(customHex: "#D0DEF5") }
    static var avatar_icon: UIColor { return UIColor(customHex: "#FFFFFF") }
    static var closed_overlay: UIColor { return UIColor(customHex: "#FFFFFF").withAlphaComponent(0.8) }

    // MARK: - Hover & Pressed
    static var blue_hover: UIColor { return UIColor(customHex: "#1252BA") }
    static var blue_pressed: UIColor { return UIColor(customHex: "#0F4295") }
    static var grey_fill_hover: UIColor { return UIColor(customHex: "#9BABCA").withAlphaComponent(0.12) }
    static var grey_fill_clicked: UIColor { return UIColor(customHex: "#9BABCA").withAlphaComponent(0.2) }
    static var grey_stroke_hover: UIColor { return UIColor(customHex: "#DBDDE6") }
    static var secondary_button_hover: UIColor { return UIColor(customHex: "#ECF3FD") }
    static var secondary_button_pressed: UIColor { return UIColor(customHex: "#DAE8FB") }
    static var tertiary_button_hover: UIColor { return UIColor(customHex: "#DAE8FB") }
    static var tertiary_button_pressed: UIColor { return UIColor(customHex: "#C8DCF9") }

    // MARK: - Animation
    static var animation_widget_stroke: UIColor { return UIColor(customHex: "#B4CCF8").withAlphaComponent(0.3) }
    static var animation_widget_fill: UIColor { return UIColor(customHex: "#B4CCF8").withAlphaComponent(0.04) }
    static var animation_button_bg: UIColor { return UIColor(customHex: "#B4CCF8").withAlphaComponent(0.2) }
    static var animation_container: UIColor { return UIColor(customHex: "#3C86FF") }
    static var animation_divider: UIColor { return UIColor(customHex: "#B4CCF8").withAlphaComponent(0.3) }

    // MARK: - Accent
    static var royal_blue: UIColor { return UIColor(customHex: "#155ED4") }
    static var butterfly_blue: UIColor { return UIColor(customHex: "#4C9AFF") }
    static var rosa: UIColor { return UIColor(customHex: "#FF7BAA") }
    static var light_indigo: UIColor { return UIColor(customHex: "#7161CE") }
    static var pale_violet: UIColor { return UIColor(customHex: "#BEB1FF") }
    static var jasper: UIColor { return UIColor(customHex: "#F85454") }
    static var atomic_tangerine: UIColor { return UIColor(customHex: "#FF8F73") }
    static var pacific_blue: UIColor { return UIColor(customHex: "#00A3BF") }
    static var turquoise_blue: UIColor { return UIColor(customHex: "#79E2F2") }
    static var deep_sea: UIColor { return UIColor(customHex: "#00875A") }
    static var dark_mint_green: UIColor { return UIColor(customHex: "#26BF66") }
    static var pale_olive_green: UIColor { return UIColor(customHex: "#AED86E") }
    static var clay: UIColor { return UIColor(customHex: "#9E5D46") }
    static var sunshade: UIColor { return UIColor(customHex: "#FF7919") }
    static var sunglow: UIColor { return UIColor(customHex: "#FCCF30") }
    static var blueish_grey: UIColor { return UIColor(customHex: "#7B869F") }
}

