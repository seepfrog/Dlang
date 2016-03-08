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

    auto beat = GenerateBeat(currentTime);
    beat.writeln;
}

auto GenerateBeat(SysTime time){
    auto hours   = time.hour();
    auto minuts  = time.minute();
    auto seconds = time.second();
    auto beat = 0.0;

    beat = 10.0*(60.0*(60.0*(hours-8.0)+minuts)+seconds)/(24.0*36.0);
    if(beat < 0) beat += 1000;

    return beat;
}
