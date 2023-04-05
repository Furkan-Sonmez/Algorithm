
fun ArrayList<Int>.selectionSort(): ArrayList<Int> {
    val sortedArray = arrayListOf<Int> ()
    for (i in 0 until size) {
        val smallest = getSmallest()
        sortedArray += this[smallest]
        removeAt(smallest)
    }
    return sortedArray
}

fun ArrayList<Int>.getSmallest(): Int {
    var smallest = this[0]
    var index = 0 
    for (i in 1 until size ) {
        if(this[i]<smallest){
            smallest = this[i]
            index = i 
        }
    }
    return index
}

fun main() {
    val array = arrayListOf(2,31,4,15,1,5332,1241,2,31,34,5,2,2,5,6,8)
    print("sort:${array.selectionSort()}")
}



