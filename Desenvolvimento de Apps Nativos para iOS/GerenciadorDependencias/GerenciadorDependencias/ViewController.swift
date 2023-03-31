//
//  ViewController.swift
//  GerenciadorDependencias
//
//  Created by Marcel Leite de Farias on 31/03/23.
//

import UIKit
import Charts

class ViewController: UIViewController {

    private lazy var chartView: LineChartView = {
        let lineChartView = LineChartView()
        lineChartView.backgroundColor = .darkGray
        lineChartView.rightAxis.enabled = false
        lineChartView.leftAxis.labelPosition = .outsideChart
        lineChartView.xAxis.labelPosition = .bottom
        lineChartView.animate(xAxisDuration: 2.5)
        return lineChartView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(chartView)
        
        print("viewDidLoad")
        
        addAnchorConstraint()
        createChart()
    }
    
    private func addAnchorConstraint() {
        chartView.translatesAutoresizingMaskIntoConstraints = false
        chartView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        chartView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        chartView.heightAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    private func createChart() {
        
        let yValues = [
            ChartDataEntry(x: 0.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 1.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 2.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 3.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 4.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 5.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 6.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 7.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 8.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 9.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 10.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 11.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 12.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 13.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 14.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 15.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 16.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 17.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 18.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 19.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 20.0, y: Double.random(in: 1...10))
        ]
        
        let set1 = LineChartDataSet(entries: yValues, label: "")
        set1.mode = .cubicBezier
        set1.drawCirclesEnabled = false
        
        let data = LineChartData(dataSet: set1)
        data.setDrawValues(false)
        self.chartView.data = data
    }


}

