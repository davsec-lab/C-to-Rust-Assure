#include <iostream>
#include <sstream>
#include "llvm/Support/raw_ostream.h"

#ifndef RustifyLogging_H_
#define RustifyLogging_H_

namespace Rustify
{

enum LogLevel
    {logERROR, logWARNING, logINFO, logDEBUG}; 

class RustifyLog
{

public:
    RustifyLog(LogLevel logLevel = logERROR) {
    }

    template <typename T>
    RustifyLog & operator<<(T const & value)
    {
        buffer << value;
        return *this;
    }

    ~RustifyLog()
    {
        //std::cerr << buffer.str();
    }

private:
    //std::ostringstream buffer;
    std::string bufferStr;
//    llvm::raw_string_ostream buffer(bufferStr);
    llvm::raw_ostream &buffer = llvm::outs();
};

extern LogLevel logLevel;

#define MyLogger(level) \
if (level > logLevel) ; \
else RustifyLog(level)

}

#endif
