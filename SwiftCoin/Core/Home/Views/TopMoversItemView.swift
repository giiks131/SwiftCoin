//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by Aleksandr Shapovalov on 19/12/22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin info
            HStack(spacing: 3) {
                Text(coin.symbol.uppercased())
                    .font(.caption).bold()
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // coin percentage
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
        RoundedRectangle(cornerRadius: 10 )
            .stroke(Color(.systemGray), lineWidth: 1)
        )
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView(coin: )
//    }
//}
