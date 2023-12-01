# Big Sorbet T::Enum Performance

While asking for help with performance of `bin/srb tc`, we got some help to see that there are some very slow methods to type check. This turned out to be related to having `T::Enum` with some 6k values :flush: 

## Steps to Reproduce

```
git clone https://github.com/technicalpickles/sorbet-giant-tenum-example
cd sorbet-giant-tenum-example
bundle install
bundle exec srb tc --counters --web-trace-file trace.json --verbose
```

Go to https://ui.perfetto.dev/ and upload trace.json to analyze. Look for `typecheckOne` spans.
