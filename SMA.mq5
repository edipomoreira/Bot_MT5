void OnTick()
  {
      double ask, bid, last;
      double smaArray[]; //Armazena os valores da média movel
      int smaHandle; //Recebe o método média movel do MT5
      
      ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK); //Recebe o preço de compra
      bid = SymbolInfoDouble(_Symbol, SYMBOL_BID); //Recebe o preço de venda
      last = SymbolInfoDouble(_Symbol, SYMBOL_LAST); //Recebe o ultimo preço
      
      smaHandle = iMA(_Symbol, _Period, 20, 0, MODE_SMA, PRICE_CLOSE); //iMA retorna o manipulador do indicador média movel (moving averages)
      ArraySetAsSeries(smaArray, true); //Dados mais recente da média na primeira posição do array
      CopyBuffer(smaHandle, 0, 0, 3, smaArray); //Armazenar no array os dados da média
      
      //se o ultimo preço for maior que a média, comenta-se compra
      if(last>smaArray[0])
         {
            Comment("Compra");
         }
      //se o ultimo preço for menor que a média, comenta-se venda
      else if(last<smaArray[0])
         {
            Comment("Venda");
         }
   
  }
//+------------------------------------------------------------------+
