//
//  FlagQuizView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 19/6/21.
//

import SwiftUI

struct FlagQuizView: View {
        
        var questions = [Question(title: "What day is it?",
                                  option1: "Monday",
                                  option2: "Saturday",
                                  option3: "Wednesday",
                                  option4: "Friday", correctOption: 2),
                         Question(title: "What framework are we using?",
                                  option1: "UIKit",
                                  option2: "SwiftUI",
                                  option3: "React Native",
                                  option4: "Flutter", correctOption: 2),
                         Question(title: "Which company created Swift?",
                                  option1: "Orange",
                                  option2: "Apple",
                                  option3: "Google",
                                  option4: "Tinkercademy", correctOption: 2),
                         Question(title: "What is our QnA Platform?",
                                  option1: "#text-questions",
                                  option2: "Ed",
                                  option3: "Yelling on webex",
                                  option4: "Screaming into the void",
                                  correctOption: 2)
        ]
        
        
        
        @State var currentQuestion = 0
        @State var isAlertPresented = false
        @State var isCorrect = false
        @State var correctAnswers = 0
        @State var isModalPresented = false
        @State var isModalPresented2 = false
        @State var modalCorrect = true
        
        
        var body: some View {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                //vertical stack for title
                //prog view
                VStack{
                    ProgressView(value: Double(currentQuestion), total: Double(questions.count))
                        .foregroundColor(.gray)
                        .frame(width: 350, height: 0)
                        .padding()
                    
                    Text(questions[currentQuestion].title)
                        .padding()
                        .font(.system(size: 30, design: .default))
                    // embed horizontal stack
                    HStack{
                        
                        VStack(alignment: .center){
                            
                            ZStack {
                                Color.gray
                                    .frame(width: 180, height: 70)
                                    .cornerRadius(15)
                                Button {
                                    didTapOption(optionNumber: 1)
                                } label: {
                                    Image(systemName: "triangle.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                    Text(questions[correctAnswers].option1)
                                        .font(.system(size: 20, design: .rounded))
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            
                            
                            ZStack {
                                Color.gray
                                    .frame(width: 180, height: 70)
                                    .cornerRadius(15)
                                Button {
                                    didTapOption(optionNumber: 2)
                                } label: {
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                    Text(questions[correctAnswers].option2)
                                        .font(.system(size: 20, design: .rounded))
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            
                            
                            
                        }
                        .padding(.vertical)
                        
                        // second vstak question
                        
                        VStack{
                            ZStack {
                                Color.gray
                                    .frame(width: 180, height: 70)
                                    .cornerRadius(15)
                                Button {
                                    didTapOption(optionNumber: 3)
                                } label: {
                                    Image(systemName: "diamond.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                    Text(questions[correctAnswers].option3)
                                        .font(.system(size: 20.0, design: .rounded))
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            
                            
                            ZStack {
                                Color.gray
                                    .frame(width: 180, height: 70)
                                    .cornerRadius(15)
                                Button {
                                    didTapOption(optionNumber: 4)
                                } label: {
                                    Image(systemName: "square.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                    Text(questions[correctAnswers].option4)
                                        .font(.system(size: 20.0, design: .rounded))
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            
                        }
                        
                        
                        
                        
                    }
                    
                }
                .alert(isPresented: $isAlertPresented, content: {
                    Alert(title: Text(isCorrect ? "Correct" : "Wrong"), message: Text(isCorrect ? "Congrats, you are kinda smart." : "This is outrageous, with such easy questions, how can you be getting this wrong?!") , dismissButton: .default(Text("Ok")) {
                        currentQuestion += 1
                        
                        if currentQuestion == questions.count {
                            isModalPresented = true
                            currentQuestion = 0
                        }
                        
                    })
                    
                })
                .sheet(isPresented: $isModalPresented, onDismiss: {
                    correctAnswers = correctAnswers
                }, content: {
                    modalView(end: modalCorrect)
                    Score(score: correctAnswers, totalQuestions: questions.count)
                })
                
            }
            
        }
        
        
        func didTapOption(optionNumber: Int){
            if optionNumber == questions[correctAnswers].correctOption {
                print("Correct!")
                isCorrect = true
                correctAnswers += 1
            } else {
                print("Wrong!")
                isCorrect = false
            }
            isAlertPresented = true
        }
    }
    
    
    struct FlagQuizView_Previews: PreviewProvider {
        static var previews: some View {
            FlagQuizView()
        }
    }

