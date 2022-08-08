unit uBaseController;

interface

type
  TBaseController = Class
    private

    public
      function GetNomeTabela: String; Virtual; Abstract;
      function GetChavePrimaria: String; Virtual; Abstract;
  End;

implementation

{ TBaseController }



end.
