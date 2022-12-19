// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PocOne extends StatefulWidget {
  const PocOne({
    super.key,
  });

  @override
  State<PocOne> createState() => _PocOneState();
}

class _PocOneState extends State<PocOne> {
  late List<CharData> datas;
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  late ZoomMode _zoomModeType;
  @override
  void initState() {
    _chartData = getChartData();
    _zoomModeType = ZoomMode.x;
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(DateTime(2016, 11, 31), 25),
      SalesData(DateTime(2017, 12, 31), 12),
      SalesData(DateTime(2018, 12, 31), 24),
      SalesData(DateTime(2019, 12, 31), 18),
      SalesData(DateTime(2020, 12, 31), 30)
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: ListView(children: [
          // Center(
          //     child: SizedBox(
          //         height: 400,
          //         width: 400,
          //         child: SfSparkLineChart(
          //           //Enable the trackball
          //           trackball: const SparkChartTrackball(
          //               activationMode: SparkChartActivationMode.tap),
          //           //Enable marker
          //           marker: const SparkChartMarker(
          //               displayMode: SparkChartMarkerDisplayMode.all),
          //           //Enable data label
          //           labelDisplayMode: SparkChartLabelDisplayMode.all,
          //           data: const <double>[
          //             1,
          //             5,
          //             -6,
          //             0,
          //             1,
          //             -2,
          //             7,
          //             -7,
          //             -4,
          //             -10,
          //             13,
          //             -6,
          //             7,
          //             5,
          //             11,
          //             5,
          //             3
          //           ],
          //         ))),
          //   SizedBox(child: SfCartesianChart()),
          // const SizedBox(
          //   height: 50,
          // ),
          // const SizedBox(
          //   height: 50,
          // ),
          // SizedBox(
          //   child: SfSparkAreaChart(
          //     borderColor: Colors.black,
          //     color: Colors.blue[200]!,
          //     data: const <double>[40, 24, 30, 14, 28],
          //   ),
          // ),
          // const SizedBox(
          //   height: 50,
          // ),
          // SizedBox(
          //   child: SfSparkLineChart.custom(
          //     color: Colors.blue,

          //     //Enable the trackball
          //     trackball: const SparkChartTrackball(
          //         activationMode: SparkChartActivationMode.tap),
          //     //Enable marker
          //     marker: const SparkChartMarker(
          //         displayMode: SparkChartMarkerDisplayMode.all),
          //     //Enable data label
          //     labelDisplayMode: SparkChartLabelDisplayMode.all,
          //     xValueMapper: (int index) => data[index].year,
          //     yValueMapper: (int index) => data[index].sales,
          //     dataCount: 5,
          //   ),
          // ),
          // const SizedBox(
          //   height: 50,
          // ),
          // SfCartesianChart(
          //     primaryXAxis: CategoryAxis(),
          //     // Chart title
          //     title: ChartTitle(text: 'Half yearly sales analysis'),
          //     // Enable legend
          //     legend: Legend(isVisible: true),
          //     // Enable tooltip
          //     tooltipBehavior: TooltipBehavior(enable: true),
          //     series: <ChartSeries<_SalesData, String>>[
          //       LineSeries<_SalesData, String>(
          //           dataSource: data,
          //           xValueMapper: (_SalesData sales, _) => sales.year,
          //           yValueMapper: (_SalesData sales, _) => sales.sales,
          //           name: 'Sales',
          //           // Enable data label
          //           dataLabelSettings:
          //               const DataLabelSettings(isVisible: true))
          //     ]),
          // const SizedBox(
          //   height: 50,
          // ),
          // SfSparkLineChart.custom(
          //     axisCrossesAt: 20,
          //     color: Colors.green,
          //     dataCount: 5,
          //     xValueMapper: (int index) => data[index].year,
          //     yValueMapper: (int index) => data[index].sales,
          //     marker: const SparkChartMarker(
          //         displayMode: SparkChartMarkerDisplayMode.last,
          //         shape: SparkChartMarkerShape.square),
          //     trackball: const SparkChartTrackball(
          //         activationMode: SparkChartActivationMode.tap),
          //     plotBand: const SparkChartPlotBand(start: 40, end: 40)),
          // const SizedBox(
          //   height: 50,
          // ),
          // SfSparkAreaChart.custom(
          //   labelDisplayMode: SparkChartLabelDisplayMode.all,
          //   dataCount: 5,
          //   xValueMapper: (int index) => data[index].year,
          //   yValueMapper: (int index) => data[index].sales,
          // ),
          // const SizedBox(
          //   height: 50,
          // ),
          // Stack(
          //   children: [
          //     SfCartesianChart(
          //       isTransposed: true,
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 53, right: 20, left: 30),
          //       child: SfSparkBarChart(
          //         axisLineColor: Colors.transparent,
          //         data: const <double>[10, 0, 8, 0, 5, 0, 6, 0, 10],
          //         highPointColor: Colors.red,
          //         lowPointColor: Colors.green,
          //         firstPointColor: Colors.orange,
          //         lastPointColor: Colors.orange,
          //       ),
          //     ),
          //   ],
          // ),

          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.5),
                      child: Container(
                        color: Colors.grey[200],
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.5),
                      child: Container(
                        color: Colors.grey[200],
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: 2,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23, right: 0, left: 0),
                  child: SfSparkBarChart(
                    axisLineColor: Colors.transparent,
                    data: const <double>[13, 0, 8, 0, 2, 0, 6, 0, 10],
                    highPointColor: Colors.red,
                    firstPointColor: Colors.orange,
                    lastPointColor: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          barraDeRisco,
          const SizedBox(
            height: 50,
          ),
          SfCartesianChart(
              legend: Legend(isVisible: false),
              tooltipBehavior: _tooltipBehavior,
              series: <SplineAreaSeries>[
                SplineAreaSeries<SalesData, DateTime>(
                    name: 'Sales',
                    dataSource: _chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    dataLabelSettings:
                        const DataLabelSettings(isVisible: false),
                    // markerSettings: MarkerSettings(isVisible: true),
                    enableTooltip: true,
                    isVisibleInLegend: false,
                    color: Colors.blue[100],
                    borderWidth: 3,
                    borderColor: Colors.blue,
                    opacity: 1,
                    splineType: SplineType.natural,
                    cardinalSplineTension: 0.2)
              ],
              primaryXAxis: DateTimeAxis(),

              // primaryXAxis: DateTimeAxis(
              //     edgeLabelPlacement: EdgeLabelPlacement.shift,
              //     dateFormat: DateFormat.y(),
              //     intervalType: DateTimeIntervalType.years,
              //     interactiveTooltip:
              //         const InteractiveTooltip(enable: false)),
              // primaryYAxis: NumericAxis(
              //     labelFormat: '{value}M',
              //     numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
              //     interactiveTooltip:
              //         const InteractiveTooltip(enable: false)),
              zoomPanBehavior: ZoomPanBehavior(
                  enableDoubleTapZooming: true,
                  enableSelectionZooming: true,
                  maximumZoomLevel: 0.7,

                  /// To enable the pinch zooming as true.
                  enablePinching: true,
                  zoomMode: _zoomModeType,
                  enablePanning: true,
                  enableMouseWheelZooming: true)),
          const SizedBox(
            height: 30,
          ),
          SfCartesianChart(
              legend: Legend(isVisible: false),
              tooltipBehavior: _tooltipBehavior,
              series: <SplineAreaSeries>[
                SplineAreaSeries<SalesData2, int>(
                    name: 'Sales',
                    dataSource: [
                      SalesData2(01, 25),
                      SalesData2(02, 12),
                      SalesData2(03, 24),
                      SalesData2(04, 18),
                      SalesData2(05, 30)
                    ],
                    xValueMapper: (SalesData2 sales, _) => sales.year,
                    yValueMapper: (SalesData2 sales, _) => sales.sales,
                    dataLabelSettings:
                        const DataLabelSettings(isVisible: false),
                    // markerSettings: MarkerSettings(isVisible: true),
                    enableTooltip: true,
                    isVisibleInLegend: false,
                    color: Colors.blue[100],
                    borderWidth: 3,
                    borderColor: Colors.blue,
                    opacity: 1,
                    splineType: SplineType.natural,
                    cardinalSplineTension: 0.2)
              ],
              // primaryXAxis: DateTimeAxis(),

              // primaryXAxis: DateTimeAxis(
              //     edgeLabelPlacement: EdgeLabelPlacement.shift,
              //     dateFormat: DateFormat.y(),
              //     intervalType: DateTimeIntervalType.years,
              //     interactiveTooltip:
              //         const InteractiveTooltip(enable: false)),
              // primaryYAxis: NumericAxis(
              //     labelFormat: '{value}M',
              //     numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
              //     interactiveTooltip:
              //         const InteractiveTooltip(enable: false)),
              zoomPanBehavior: ZoomPanBehavior(
                  enableDoubleTapZooming: true,
                  enableSelectionZooming: true,
                  maximumZoomLevel: 0.7,

                  /// To enable the pinch zooming as true.
                  enablePinching: true,
                  zoomMode: _zoomModeType,
                  enablePanning: true,
                  enableMouseWheelZooming: true)),
          SfCartesianChart(
              legend: Legend(isVisible: false),
              tooltipBehavior: _tooltipBehavior,
              primaryXAxis: CategoryAxis(
                maximumLabelWidth: 80,
              ),
              series: <SplineAreaSeries<SalesData3, String>>[
                SplineAreaSeries<SalesData3, String>(
                    dataSource: <SalesData3>[
                      SalesData3('Jan', 0),
                      SalesData3('Fev', 40),
                      SalesData3('Mar', 60),
                      SalesData3('Abr', 80),
                      SalesData3('Mai', 120),
                      SalesData3('Jun', 160),
                      SalesData3('Jul', 220),
                      SalesData3('Ago', 280),
                      SalesData3('Set', 340),
                      SalesData3('Out', 400),
                      SalesData3('Nov', 450),
                      SalesData3('Dez', 80)
                    ],
                    xValueMapper: (SalesData3 data, _) => data.year,
                    yValueMapper: (SalesData3 data, _) => data.sales,
                    dataLabelSettings:
                        const DataLabelSettings(isVisible: false),
                    // markerSettings: MarkerSettings(isVisible: true),
                    enableTooltip: true,
                    isVisibleInLegend: false,
                    color: Colors.blue[100],
                    borderWidth: 3,
                    borderColor: Colors.blue,
                    opacity: 1,
                    splineType: SplineType.natural,
                    cardinalSplineTension: 0.7)
              ]),
          SfCartesianChart(
            primaryYAxis:
                DateTimeAxis(autoScrollingDeltaType: DateTimeIntervalType.days),
          ),
        ]));
  }
}

class SalesData {
  SalesData(
    this.year,
    this.sales,
  );
  final DateTime year;

  final double sales;
}

class SalesData2 {
  SalesData2(
    this.year,
    this.sales,
  );
  final int year;

  final double sales;
}

class SalesData3 {
  SalesData3(
    this.year,
    this.sales,
  );
  final String year;

  final int sales;
}

class CharData {
  double day = 0;
  double price = 0;
  CharData({
    required this.day,
    required this.price,
  });
}

Widget get barraDeRisco => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 90,
        height: 20,
        child: Row(
          children: [
            Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green,
                        Colors.green,
                        Colors.orange[400]!,
                        Colors.orange[400]!,
                        Colors.red,
                        Colors.red,
                      ],
                    ))),
            Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.red,
                        Colors.red,
                        Colors.orange[400]!,
                        Colors.orange[400]!,
                        Colors.green,
                        Colors.green,
                      ],
                    ))),
          ],
        ),
      ),
    );
