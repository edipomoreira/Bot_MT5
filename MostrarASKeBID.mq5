void OnTick()
  {
//---
double ask, bid;
ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
bid = SymbolInfoDouble(_Symbol, SYMBOL_BID);

Comment("Preço (Compra) ASK = ", ask, "\nPreço (Venda) BID = ", bid);
   
  }
//+------------------------------------------------------------------+
