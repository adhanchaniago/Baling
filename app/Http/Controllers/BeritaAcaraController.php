<?php

namespace App\Http\Controllers;
use App\BeritaAcara;
use Illuminate\Http\Request;

class BeritaAcaraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      /*
      $this->validate($request, [
        'id_laporan' => 'required',
        'perihal'=> 'required',
        'nama'=> 'required',
        'no_rekening'=> 'required',
        'no_kartu'=> 'required',
        'alasan'=> 'required',
        'status_ubah'=> 'required',
        'waktu_ubah'=> 'required',
        'uid_ubah'=> 'required',
        'saldo'=> 'required',
        'uid'=> 'required',
        'product'=> 'required',
        'category'=> 'required',
      ]);
      $beritaacara = new BeritaAcara([
        'id_laporan' => $request->get('id_laporan'),
        'perihal'=> $request->get('perihal'),
        'nama_cost'=> $request->get('nama'),
        'no_rekening'=> $request->get('no_rekening'),
        'no_kartu'=> $request->get('no_kartu'),
        'alasan'=> $request->get('alasan'),
        'status_ubah'=> $request->get('status_ubah'),
        'waktu_ubah'=> $request->get('waktu_ubah'),
        'uid_ubah'=> $request->get('uid_ubah'),
        'saldo'=> $request->get('saldo'),
        'uid'=> $request->get('uid'),
        'product'=> $request->get('product'),
        'category'=> $request->get('category'),
        //'created_at'=> Carbon::now()->timestamp,
      ]);
      */
      $this->validate($request, [
        'request_id' => 'required',
        'agent'=> 'required',
        'costumer'=> 'required',
        //'no_rekening'=> 'required',
        'no_kartu'=> 'required',
        //'no_costumer'=> 'required',
        'product'=> 'required',
        'category'=> 'required',
        'status'=> 'required',
        'transaction_time'=> 'required',
        'created_on'=> 'required',
        'owner'=> 'required',
      ]);
      $beritaacara = new BeritaAcara([
        'request_id' => $request->get('request_id'),
        'agent'=> $request->get('agent'),
        'costumer'=> $request->get('costumer'),
        'no_rekening'=> $request->get('no_rekening'),
        'no_kartu'=> $request->get('no_kartu'),
        'no_costumer'=> $request->get('no_costumer'),
        'product'=> $request->get('product'),
        'category'=> $request->get('category'),
        'status'=> $request->get('status'),
        'transaction_time'=> $request->get('transaction_time'),
        'created_on'=> $request->get('created_on'),
        'owner'=> $request->get('owner'),
        //'created_at'=> Carbon::now()->timestamp,
      ]);
      $beritaacara->save();
      return redirect('/')->with('success', 'Berita Acara berhasil disimpan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $data = BeritaAcara::find($id);
      $data->delete();
      return redirect('/home')->with('success', 'Berita acara berhasil dihapus');
    }
}
