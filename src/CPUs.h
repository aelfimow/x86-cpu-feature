#ifdef CPUs_H
#error Already included.
#else
#define CPUs_H

extern std::list<std::pair<std::function<bool ()>, std::string>> CreateCPUs();

#endif
