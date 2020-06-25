//
//  StatsWidget.swift
//  StatsWidget
//
//  Created by Alfian Losari on 23/06/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//


@main
struct StatsWidget: Widget {
    private let kind: String = "StatsWidget"
    
    public var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider(), placeholder: PlaceholderView()) { entry in
            StatsWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium, .systemSmall, .systemLarge])
        .configurationDisplayName("Latest cases statistics")
        .description("COVID-19 Stats from WHO")
    }
}

struct StatsWidget_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
