import std.stdio,
           std.datetime;

void main()
{
    SysTime currentTime  = Clock.currTime();
    string timeString     = currentTime.toISOExtString();
    SysTime restoredTime = SysTime.fromISOExtString(timeString);

    currentTime.writeln;
    //timeString.writeln;
    //restoredTime.writeln;

    auto nowHours    = currentTime.hour();
    auto nowMinuts   = currentTime.minute();
    auto nowSeconds = currentTime.second();


    auto nowBeat = 10*(60*(60*(nowHours-8)+nowMinuts)+nowSeconds)/(24*36);

    if(nowBeat < 0) nowBeat += 1000;

    nowHours.writeln;
    nowMinuts.writeln;
    nowSeconds.writeln;

    nowBeat.writeln;

}
