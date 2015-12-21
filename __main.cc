
namespace __ {
	USINGALLNS
	struct __main__ {
		int exitcode;
		inline __main__() {
			cout << "Hello, World!!\n";
			exitcode = 0;
		}
		inline operator int() {
			return exitcode;
		}
	};
}

int main() {
	return __::__main__();
}
