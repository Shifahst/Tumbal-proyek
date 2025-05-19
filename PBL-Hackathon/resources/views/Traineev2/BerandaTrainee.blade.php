@extends('layouts.maintrainee')

@vite(['resources/js/home.js'])
@section('MainTrainee')

<!-- Quill CSS -->
<!-- <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script> -->


<!-- Javascript home -->

<main class="  bg-gray-100">
    <section class="mt-16 px-16">
        <div class="pt-10">
            <h1 class=" text-3xl font-bold">
                Selamat Datang, <span class="font-semibold text-gray-700 text-2xl">William James Moriarty</span>👋
            </h1>
        </div>
    </section>
    <section class="p-3 px-24">
        <div class="sm:mb-0 my-3">
            <div class="bg-gwhite text-center py-4">
                <div class="p-4 rounded-lg shadow-lg bg-white">
                    <h2 class="my-2 font-bold text-xl text-left sm:text-3xl text-slate-950">Rekomendasi Kursus</h2>
                    <p class="mb-5 text-gray-700 text-left">Temukan kursus terbaik yang sesuai dengan minat dan kebutuhan belajarmu</p>
                    <!-- Grid Container -->
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <!-- Card 1 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-44 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-sm font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-sm ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-lg font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to </p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-sm font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-xs text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-lg">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                        <!-- Card 2 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-44 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-sm font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-sm ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-lg font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to</p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-sm font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-xs text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-lg">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                        <!-- Card 3 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-44 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-sm font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-sm ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-lg font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, beatae.</p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-sm font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-xs text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-lg">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-3 px-8 bg-white mb-20 shadow-lg">
        <div class="sm:mb-0 my-3">
            <div class="bg-gwhite text-center py-4">
                <div class="p-4">
                    <h2 class="my-2 font-bold text-xl sm:text-3xl text-slate-950">Rekomendasi Kursus</h2>
                    <p class="mb-5 text-gray-700">Temukan kursus terbaik yang sesuai dengan minat dan kebutuhan belajarmu</p>
                    <!-- Grid Container -->
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                        <!-- Card 1 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-36 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-xs font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-xs ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-md font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to </p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-xs font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-[11px] text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-sm">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                        <!-- Card 2 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-36 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-xs font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-xs ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-md font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to </p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-xs font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-[11px] text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-sm">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                        <!-- Card 3 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-36 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-xs font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-xs ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-md font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to </p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-xs font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-[11px] text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-sm">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                        <!-- Card 4 -->
                        <div class="bg-white rounded-xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-2xl hover:-translate-y-1">
                            <!-- Course Image -->
                            <div class="relative">
                                <img class="w-full h-36 object-cover" src="https://images.unsplash.com/photo-1542626991-cbc4e32524cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Course thumbnail">
                                <div class="absolute top-3 left-3 bg-red-500 text-white text-xs font-semibold px-2 py-1 rounded-full">
                                    Lanjutan
                                </div>
                                <!-- <div class="absolute bottom-3 right-3 bg-white/90 backdrop-blur-sm text-gray-800 text-xs font-bold px-2 py-1 rounded-full flex items-center">
                                    <i class="fas fa-clock text-xs mr-1 text-emerald-500"></i> 12 Hours
                                </div> -->
                            </div>

                            <!-- Course Content -->
                            <div class="p-6">
                                <div class="flex justify-between items-start mb-2">
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Pengelasan</span>
                                    <div class="flex items-center">
                                        <i class="fas fa-star text-yellow-400 text-sm"></i>
                                        <span class="text-gray-700 text-xs font-medium ml-1">4.9</span>
                                        <span class="text-gray-400 text-xs ml-1">(128)</span>
                                    </div>
                                </div>

                                <div class="w-full text-left">
                                    <a href="#" class="text-md font-bold text-gray-800 mb-1 line-clamp-2 text-left">
                                        Advanced React Patterns and Modern JavaScript Techniques
                                    </a>
                                    <p class="text-gray-500 text-xs mb-4 line-clamp-2 text-left">Master React hooks, context API, and advanced state management to </p>
                                </div>


                                <div class="flex items-center justify-between">
                                    <div class="flex items-center">
                                        <img class="w-8 h-8 rounded-full" src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor">
                                        <div class="ml-2">
                                            <p class="text-xs font-medium text-gray-700">Sarah Johnson</p>
                                            <p class="text-[11px] text-gray-500">Senior Developer</p>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <p class="text-ButtonBase font-bold text-sm">Rp. 6.000.000</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Course Footer -->
                            <!-- <div class="text-right px-6 py-4 bg-gray-50 border-t border-gray-100">
                                <div class="flex space-x-2">
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-users mr-1"></i> 245 Students
                                    </span>
                                    <span class="text-xs text-gray-500 flex items-center">
                                        <i class="fas fa-book mr-1"></i> 15 Lessons
                                    </span>
                                </div>
                                <button class="bg-ButtonBase hover:bg-HoverGlow text-white font-medium py-2 px-4 rounded-lg transition-colors duration-300 text-sm">
                                    Lihat Detail
                                </button>
                            </div> -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="min-h-screen bg-cover"
        style="background-image: url('https://alroys.com/wp-content/uploads/2023/02/Shutterstock_1822872494-scaled.jpg')">>
        <div class="mt-8 lg:w-2/5 lg:mx-6">
            <div
                class="w-full px-8 py-6 sm:py-10 mx-auto overflow-hidden bg-white shadow-2xl rounded-xl dark:bg-gray-900 lg:max-w-xl">
                <h1 class="text-xl font-medium text-gray-700 dark:text-gray-200">Umpan Balik</h1>
                <p class="mt-2 text-sm text-gray-500 dark:text-gray-400">
                    Kami sangat menghargai masukan Anda! Jika Anda memiliki waktu, kami akan sangat berterima kasih jika Anda dapat memberikan ulasan tentang pengalaman Anda menggunakan aplikasi ini. Ulasan Anda akan membantu kami untuk terus meningkatkan kualitas aplikasi.
                </p>
                <form class="mt-6 text-sm">
                    <div class="flex-1">
                        <label class="block  text-sm text-gray-600 dark:text-gray-200">Nama</label>
                        <input type="text" placeholder="John Doe"
                            class="block w-full px-5 py-3 mt-2 text-sm placeholder:text-sm text-gray-700 bg-white border border-gray-200 rounded-md dark:bg-gray-900 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 focus:ring-blue-300 focus:ring-opacity-40 dark:focus:border-blue-300 focus:outline-none focus:ring" />
                    </div>

                    <div class="flex-1 mt-6">
                        <label class="block mt-2 text-sm text-gray-600 dark:text-gray-200">Komentar</label>
                        <textarea placeholder="Ulasan kamu..."
                            class="block w-full px-5 py-3 mt-2 text-gray-700 text-sm placeholder:text-sm bg-white border border-gray-200 rounded-md dark:bg-gray-900 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 focus:ring-blue-300 focus:ring-opacity-40 dark:focus:border-blue-300 focus:outline-none focus:ring"></textarea>
                    </div>

                    <button type="submit"
                        class="w-full px-6 py-3 mt-8 text-sm font-semibold tracking-wide text-white capitalize transition-colors duration-700 transform bg-[#2563EB] rounded-md hover:bg-[#161D6F] focus:outline-none focus:ring focus:ring-blue-400 focus:ring-opacity-50">
                        Kirim
                    </button>
                </form>
            </div>
        </div>
    </section>





    <!-- <section class="bg-gray-100 min-h-screen p-6">
        <div class="max-w-2xl mx-auto bg-white p-6 rounded shadow">
            <h1 class="text-xl font-bold mb-4 text-center">Quill Editor</h1>

           
            <div id="toolbar" class="mb-2">
                <span class="ql-formats">
                    <button class="ql-bold"></button>
                    <button class="ql-italic"></button>
                    <button class="ql-underline"></button>
                </span>
                <span class="ql-formats">
                    <button class="ql-list" value="ordered"></button>
                    <button class="ql-list" value="bullet"></button>
                </span>
            </div>

            
            <div id="editor" class="bg-white h-60 border border-gray-300 rounded p-2"></div>
        </div>

        
        <script src="https://cdn.quilljs.com/1.3.6/quill.min.js"></script>

        
        <script>
            const quill = new Quill('#editor', {
                theme: 'snow',
                modules: {
                    toolbar: '#toolbar'
                }
            });
        </script>
    </section> -->

    <!-- <section>
        <textarea id="editor" class="w-full p-3 border border-gray-300 rounded-md">
  <p>Ini contoh <strong>CKEditor</strong>.</p>
</textarea>

        <script>
            ClassicEditor
                .create(document.querySelector('#editor'))
                .then(editor => {
                    console.log('CKEditor aktif', editor);
                })
                .catch(error => {
                    console.error(error);
                });
        </script>

    </section> -->
</main>


@endsection