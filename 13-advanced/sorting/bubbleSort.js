const bubbleSort = (arr) => {
  arr = [...arr]; // Copy the array.
  let end = arr.length - 1;

  while(end > 0) {
    for (let i = 0; i < end; i++) {
      if (arr[i] > arr[i + 1]) {

        // Swap two values
        let largerValue = arr[i];
        arr[i] = arr[i+1];
        arr[i+1] = largerValue;

      }
    }
    end--;
  }
  return arr;
}

const values = [];
for (let i = 0; i < 1000; i++) {
  values.push( Math.random() * 10000 );
};

console.log( bubbleSort( values ) );
