#ifndef WORLD_H
#define WORLD_H

class World
{
    public:
        virtual ~World(){};
        virtual void greet() = 0;
};
#endif