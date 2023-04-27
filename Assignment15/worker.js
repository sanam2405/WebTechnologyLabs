function factorial(n) {
    if (n === 0) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
  
  self.addEventListener("message", function(event) {
    var n = event.data;
    var table = [];
    for (var i = 1; i <= n; i++) {
      table.push(factorial(i));
    }
    self.postMessage(table);
  });
  