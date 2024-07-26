//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct ContentView: View {

    @State var showBookingAlert = false
    @State var showGuideView = false
    @State var showInfoView = false
    @GestureState private var dragState = DragState.inactive
    private var dragAreaThreshold = 65.0
    @State private var lastCardIndex = 1
    @State private var cardRemovalTransition: AnyTransition?
    
    @State var cardViews: [CardView] = {
        honeyMoonData.prefix(2).map {
            CardView(honeyMoon: $0)
        }
    }()
    
    private func moveCards() {
        cardViews.removeFirst()
        lastCardIndex += 1
        let honeyMoon = honeyMoonData[lastCardIndex % honeyMoonData.count]
        let newCardView = CardView(honeyMoon: honeyMoon)
        cardViews.append(newCardView)
    }
    
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {
            return false
        }
        return index == 0
    }
    
    enum DragState {
        case inactive
        case pressing
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive, .pressing:
                return .zero
            case let .dragging(translation):
                return translation
            }
        }
        
        var isDragging: Bool {
            if case .dragging = self {
                return true
            }
            return false
        }
    }
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView)
                .opacity(dragState.isDragging ? 0.0 : 1.0)
                .animation(.default, value: UUID())
            
            Spacer()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(isTopCard(cardView: cardView) ? 1 : 0)
                        .overlay {
                            ZStack {
                                Image(systemName: "x.circle")
                                    .modifier(SymbolModifier())
                                    .opacity(dragState.translation.width < -dragAreaThreshold && isTopCard(cardView: cardView) ? 1 : 0)
                                
                                Image(systemName: "heart.circle")
                                    .modifier(SymbolModifier())
                                    .opacity(dragState.translation.width > dragAreaThreshold && isTopCard(cardView: cardView) ? 1 : 0)
                            }
                        }
                        .offset(
                            x: isTopCard(cardView: cardView) ? dragState.translation.width : 0,
                            y: isTopCard(cardView: cardView) ? dragState.translation.height : 0
                        )
                        .scaleEffect(dragState.isDragging && isTopCard(cardView: cardView) ? 0.85 : 1)
                        .rotationEffect(Angle(degrees: isTopCard(cardView: cardView) ? dragState.translation.width / 12 : 0))
                        .animation(.interpolatingSpring(stiffness: 120, damping: 120), value: UUID())
                        .gesture(
                            LongPressGesture(minimumDuration: 0.01)
                                .sequenced(before: DragGesture())
                                .updating($dragState, body: { value, state, transaction in
                                    switch value {
                                    case .first(true):
                                        state = .pressing
                                    case .second(true, let drag):
                                        state = .dragging(translation: drag?.translation ?? .zero)
                                    default:
                                        break
                                    }
                                })
                                .onChanged({ value in
                                    guard case .second(true, let drag?) = value else {
                                        return
                                    }
                                    
                                    if drag.translation.width < -dragAreaThreshold {
                                        cardRemovalTransition = .leadingBottom
                                    } else if drag.translation.width > dragAreaThreshold {
                                        cardRemovalTransition = .trailingBottom
                                    }
                                })
                                .onEnded({ value in
                                    guard case .second(true, let drag?) = value else {
                                        return
                                    }
                                    
                                    if drag.translation.width < -dragAreaThreshold || drag.translation.width > dragAreaThreshold {
                                        moveCards()
                                    }
                                })
                        )
                        .transition(cardRemovalTransition ?? .identity)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            FooterView(showBookingAlert: $showBookingAlert)
                .opacity(dragState.isDragging ? 0.0 : 1.0)
                .animation(.default, value: UUID())
        }
        .alert(isPresented: $showBookingAlert, content: {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy HoneyMoon!"))
            )
        })
    }
}

#Preview {
    ContentView()
}
