# InlineStringLiteralsVsStringConstants
Performance benchmark to check inline string literals compared to CONST strings.

### Usage
 - crystal benchmark.cr --release
 - crystal benchmark_2.cr -- release (if you want no exception generation)


### Current Results (with exceptions)
 - ![](https://i.gyazo.com/fbe10183b1d24134569fd061e2fc63cb.png)
 - I believe it's a negligible performance difference. A developer should not worry at all. Use whatever way you feel more comfortable with!
 
### Current Results (without exceptions)
 - ![](https://i.gyazo.com/8794ca70035411295d6b0e22d2db65c4.png)
 - Main takeaway: Wow, no bytes per operation O_o
 
 
### Contributing

If you can make this benchmark better, please create a PR / issue!

Thank you and have a wonderful day!
