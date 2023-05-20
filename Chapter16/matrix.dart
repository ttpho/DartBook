class Matrix {
  Matrix._();
  static List<List<T>> initMatrix<T>({
    required int row,
    required int col,
    required T map(int indexRow, int indexCol),
  }) {
    return List<List<T>>.generate(row, (int indexRow) {
      return List<T>.generate(col, (int indexCol) {
        return map(indexRow, indexCol);
      });
    });
  }
}

void main(List<String> args) {
  final row = 3;
  final col = 4;
  List<List<int>> matrixInt = Matrix.initMatrix(
    row: row,
    col: col,
    map: (indexRow, indexCol) {
      return indexRow * row + indexCol;
    },
  );

  print(matrixInt); // [[0, 1, 2, 3], [3, 4, 5, 6], [6, 7, 8, 9]]

  List<List<String>> matrixText = Matrix.initMatrix(
    row: row,
    col: col,
    map: (indexRow, indexCol) {
      return "$indexRow$indexCol";
    },
  );
  print(matrixText); // [[00, 01, 02, 03], [10, 11, 12, 13], [20, 21, 22, 23]]
}
