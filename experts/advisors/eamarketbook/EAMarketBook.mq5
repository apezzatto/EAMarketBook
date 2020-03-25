//+------------------------------------------------------------------+
//|                                                           ea.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#include "MarketBook.mqh"

CMarketBook _book(Symbol());         // Initialize class with current instrument
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
  //MarketBookAdd(Symbol());
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   //MarketBookRelease(Symbol());
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+
void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| BookEvent function                                               |
//+------------------------------------------------------------------+
void OnBookEvent(const string &symbol)
  {
//---
   _book.Refresh();
   int buyVolTotal = (int)_book.InfoGetInteger(MBOOK_ASK_VOLUME_TOTAL);
   int sellVolTotal = (int)_book.InfoGetInteger(MBOOK_BID_VOLUME_TOTAL);
   int volTotal = buyVolTotal+sellVolTotal;
   int numOfDepths = (int)_book.InfoGetInteger(MBOOK_DEPTH_TOTAL);
   int volumeAverage = volTotal/numOfDepths;
   printf("Buy Vol Total: "+(string)buyVolTotal);
   printf("Sell Vol Total: "+(string)sellVolTotal);
   printf("Vol Total: "+(string)volTotal);
   printf("Num Of Depths: "+(string)numOfDepths);   
   printf("Volume Average: "+(string)volumeAverage);   
  }
//+------------------------------------------------------------------+
