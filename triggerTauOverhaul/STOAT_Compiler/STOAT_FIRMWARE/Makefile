.PHONY: clean

STOAT_Model_v1.so: myproject.o STOAT_Model_v1.o
	$(CXX) $(CXXFLAGS) $(LD_FLAGS) -shared $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm STOAT_Model_v1.so
